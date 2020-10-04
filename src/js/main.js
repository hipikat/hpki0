// Main JS entry-point for pages on hpk.io

import '../scss/styles.scss';

//import(
  /* webpackPrefetch: true */
  /* webpackChunkName: "jquery" */
//  'jQuery');
//import(
  /* webpackPrefetch: true */
  /* webpackChunkName: "foundation" */
//  './foundation_components.js');

import $ from 'jquery';

export { Foundation as Core }       from './lib/foundation/foundation.core';
import * as CoreUtils               from './lib/foundation/foundation.core.utils';
export { CoreUtils };

export { Tooltip }                  from './lib/foundation/foundation.tooltip';




//window.$ = $;
//window.jQuery = jQuery;

//import('./foundation_components.js');
console.log('--- imported components');


window.$ = $;
Foundation.addToJquery($);
//var $ = jQuery.$;

$(document).ready(function () {
    $(document).foundation();
    console.log('--- initialised .foundation()');
});

console.log('--- finished loading main.js');
