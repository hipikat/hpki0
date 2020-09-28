// This loader exists as Webpack's main entry point,
// to trick it into chunking-out individual libraries.

import '../scss/styles.scss';

import(
  /* webpackPrefetch: true */
  /* webpackChunkName: "jquery" */
  'jquery');
import(
  /* webpackPrefetch: true */
  /* webpackChunkName: "foundation" */
  './foundation_components.js');

console.log('loaded loader.js', $);
