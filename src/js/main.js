// Main JS entry-point for pages on hpk.io

import $ from 'jquery';
import './foundation_components.js';
console.log('--- imported components');

$(document).ready(function () {
    $(document).foundation();
    console.log('--- initialised .foundation()');
});

console.log('--- finished loading main.js');
