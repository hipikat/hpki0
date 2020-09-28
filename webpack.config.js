const CopyPlugin = require('copy-webpack-plugin');
const HtmlWebpackPlugin = require('html-webpack-plugin');
const MiniCssExtractPlugin = require('mini-css-extract-plugin');
const TerserPlugin = require('terser-webpack-plugin');
const webpack = require('webpack');
const path = require('path');

const dev_debug_port = 9000,
  dev_prod_port = 9001;


module.exports = env => {

  // Use e.g. `webpack --env (debug|prod)[,watch][,[no]minify][,(clean|dirty)]`,
  // or everything will just default to clean, minified production mode.
  const mode = /\bdebug\b/.test(env) ? "debug" : "production",
    min = (mode == "production" || /\bminify\b/.test(env)) ? (/\bnominify\b/.test(env) ? false : true) : false,
    clean = (mode == "production" || /\bclean\b/.test(env)) ? (/\bdirty\b/.test(env) ? false : true) : false,
    suffix = min ? '.min' : '',
    entry_points = {};

  console.log("Building in " + mode + " mode (" +
    (clean ? '' : 'no-') + 'clean, ' +
    (min ? '' : 'no-') + 'minify)...');

  // Entry points go here
  entry_points['loader' + suffix] = path.join(__dirname, '/src/js/loader.js');
  entry_points['main' + suffix] = path.join(__dirname, '/src/js/main.js');

  var optimize_options = { minimize: (min ? true : false) };
  if (min) {
    optimize_options['minimizer'] = [
      new TerserPlugin({
        extractComments: {
          condition: /^\**!|@preserve|@license|@cc_on/i,
          filename: 'extracted-comments.js',
          banner: (licenseFile) => {
            return `License information can be found in ${licenseFile}`;
          },
        },
        terserOptions: {
          ecma: 2016,
          compress: min ? {
            drop_console: clean ? true : false,
          } : false,
          format: {
            semicolons: true,
            max_line_len: 110,
          },
          mangle: (min ? true : false),
        },
      }),
    ]
  }

  return {
    target: "web",
    mode: (mode == "production" ? "production" : "development"),
    entry: entry_points,
    output: {
      path: path.resolve(__dirname, 'static'),
      filename: 'js/[name].js',
      chunkFilename: 'js/[name].chunk' + suffix + '.js',
    },
    optimization: optimize_options,
    devServer: {
      port: (mode == "production" ? dev_prod_port : dev_debug_port),
      contentBase: path.join(__dirname, '/static'),
      watchContentBase: true,
      watchOptions: { poll: true },
      publicPath: '/static/',
    },
    devtool: false,
    plugins: [
      new webpack.ProvidePlugin({
        $: "jquery",
        jQuery: "jquery"
      }),
      new webpack.SourceMapDevToolPlugin({
        filename: 'maps/[file].map',
        sourceRoot: 'lib',
      }),
      new MiniCssExtractPlugin({
        filename: 'css/[name].css',
      }),
      new HtmlWebpackPlugin({
        template: 'src/templates/gallery.html',
        filename: 'index' + (mode != "production" ? '-debug' : '') + '.html',
        minify: (min ? true : false),
      }),
      new HtmlWebpackPlugin({
        template: 'node_modules/foundation-sites/customizer/index.html',
        filename: 'html/foundation/index.html',
      }),
      new CopyPlugin({
        patterns: [{
          from: 'src/templates/static',
        }],
      }),
    ],
    module: {
      rules: [
        { test: /.js$/,
          exclude: /(node_modules)\|main.js/,
          use: {
            loader: 'babel-loader',
            options: {
              presets: [
                ["@babel/preset-env",
                  {"targets": "defaults" }
                  //{"targets": "since 2015-03-10" }
                  //{ "useBuiltIns": "entry" }
                ]
              ]
            }
          }
        },
        { test: /loader.js$/,
          exclude: /(node_modules)/,
          use: {
            loader: 'babel-loader',
            options: {
              presets: ['@babel/preset-env']
            }
          }
        },
        { test: /\.s[ac]ss$/,
          use: [
            { loader: MiniCssExtractPlugin.loader },
            { loader: 'css-loader',
              options: {
                sourceMap: true,
              }
            },
            { loader: 'postcss-loader',
              options: {
                sourceMap: true,
                postcssOptions: {
                  plugins: [
                    {'postcss-import': {
                      root: 'lib',
                    }},
                    'autoprefixer',
                    {'postcss-preset-env': {
                      stage: 1,
                      browsers: 'last 2 versions',
                    }},
                  ],
                },
              }
            },
            { loader: 'sass-loader',
              options: {
                implementation: require("sass"),
                sourceMap: true,
                sassOptions: {
                  includePaths: [
                    path.resolve(__dirname, 'lib/foundation'),
                    path.resolve(__dirname, 'lib/motion-ui'),
                    path.resolve(__dirname, "src/scss"),
                  ]
                }
              }
            },
          ],
        },
      ],
    },
  };
};
