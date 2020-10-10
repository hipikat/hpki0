// Main JS entry-point for pages on hpk.io

// Time-keeping, global logging object
window.global_timer = {
  performance_origin: performance.now(),
  log: function (message) {
    console.log("[AT " + (performance.now() - global_timer.performance_origin).toFixed(4) +
                "ms]: " + message);
  },
}
global_timer.log("Initialised global_timer at " + global_timer.performance_origin);

import '../scss/styles.scss';
import $ from 'jquery';
import { Foundation } from './base.js';

Foundation.addToJquery($);
global_timer.log('Finished importing components in main.js');

// Initialise 
$(document).ready(function () {
    //var $top_menu;

    //Foundation.addToJquery($);
    $(document).foundation();

    //$top_menu = new DropdownMenu($('#top-nav'));

    global_timer.log("Foundation initialised on the DOM");
});

global_timer.log("Finished loading main.js");
