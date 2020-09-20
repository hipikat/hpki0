const throwError = true;

var gulp          = require('gulp');
var browserSync   = require('browser-sync').create();
var $             = require('gulp-load-plugins')({
  pattern: ['gulp-*', 'gulp.*'],
  replaceString: /\bgulp[\-.]/
});

var gulpSassError = require('gulp-sass-error');

var src = './src/';
var dest = './static/';

var sassPaths = [
  'node_modules/foundation-sites/scss',
  'node_modules/motion-ui/src'
];

var sassOptions = {
  includePaths: sassPaths,
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
  return gulp.src(src + 'scss/styles.scss')
    // Start recroding sourcemaps for debugging
    .pipe($.sourcemaps.init())
      .pipe($.sourcemaps.identityMap())
      // Compile Sass
      .pipe($.sass(sassOptions))
        .on('error', gulpSassError.gulpSassError(throwError))
      //Autoprefixer adds '-moz-/-webkit-'-style prefixes
      .pipe($.autoprefixer())
    // Write sourcemaps
    .pipe($.sourcemaps.write('./maps'))
    // And write non-minified CSS
    .pipe(gulp.dest(dest + 'css/'))
    // Write minified CSS
    .pipe($.rename('styles.css.min'))
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

  gulp.watch("src/scss/*.scss", sass);
  gulp.watch("*.html").on('change', browserSync.reload);
}

gulp.task('scripts', scripts);
gulp.task('sass', sass);
gulp.task('serve', gulp.series('sass', serve));
gulp.task('default', gulp.series('sass', serve));
