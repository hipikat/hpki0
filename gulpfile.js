
const debug = true;
const base_scss = 'styles';

var gulp          = require('gulp');
var browserSync   = require('browser-sync').create();
var $             = require('gulp-load-plugins')({
  pattern: ['gulp-*', 'gulp.*'],
  replaceString: /\bgulp[\-.]/
});

var gulpSassError = require('gulp-sass-error');

var src = {
    scss: './src/scss/'
};
var dest = './static/';

var sassPaths = {
  'node_modules/foundation-sites/scss': 'foundation_scss',
  'node_modules/motion-ui/src': 'motion-ui_scss'
};

var sassOptions = {
  includePaths: Object.keys(sassPaths),
  indentWidth: 4,
  outputStyle: 'expanded',
  sourceComments: true
};

var autoprefixerOptions = {
  Browserslist: ['last 2 versions']
};

var cleanCSSOptions = {
  compatibility: 'ie8',
  format: 'keep-breaks'
}

// Compile CSS from Sass files
function sass() {
  return gulp.src(src.scss + base_scss + '.scss')
    // Start recroding sourcemaps for debugging
    .pipe($.sourcemaps.init())
      .pipe($.sourcemaps.identityMap())
      // Compile Sass
      .pipe($.sass(sassOptions))
        .on('error', gulpSassError.gulpSassError(debug ? true : false))
      //Autoprefixer adds '-moz-/-webkit-'-style prefixes
      .pipe($.autoprefixer())
    // Write sourcemaps
    .pipe($.sourcemaps.write('./maps'))
    // And write non-minified CSS
    .pipe(gulp.dest(dest + 'css/'))
    // Write minified CSS
    .pipe($.rename(base_scss + '.css.min'))
    .pipe($.cleanCss(cleanCSSOptions))
    .pipe(gulp.dest(dest + 'css/'));
}

// Concatenate & Minify JS
function scripts() {
  return gulp.src(src + 'js/*.js')
    .pipe(plugins.concat('main.js'))
    .pipe(plugins.rename({suffix: '.min'}))
    .pipe(plugins.uglify())
    .pipe(gulp.dest(dest + 'js'));
}

function serve() {
  browserSync.init({
    server: "./static/"
  });

  gulp.watch(src.scss + "**/*.scss", sass);
  //gulp.watch("./src/*.html").on('change', browserSync.reload);
}

gulp.task('scripts', scripts);
gulp.task('sass', sass);
gulp.task('watch', function () {
    gulp.watch(src.scss + "*.scss", ['sass']);
});
gulp.task('serve', gulp.series('sass', serve));
gulp.task('default', gulp.series('sass', serve));
