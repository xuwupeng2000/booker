/* eslint no-console:0 */
// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
//
// To reference this file, add <%= javascript_pack_tag 'application' %> to the appropriate
// layout file, like app/views/layouts/application.html.erb

import "../styles/application.scss";
import "bootstrap";
import {} from "jquery-ujs"; // Init Rails UJS
import LocalTime from "local-time";
import Chartkick from "chartkick";
import Chart from "chart.js";

global.$ = require("jquery");

global.jQuery = global.$; // Import $ to global space(attach to window object) so Rails RJS can do its job
require("chosen-js");
require("chosen-js/chosen.css");
require("star-rating-svg/src/jquery.star-rating-svg");
require("star-rating-svg/src/css/star-rating-svg.css");

global.flatpickr = require("flatpickr/dist/flatpickr.js");
require("flatpickr/dist/flatpickr.css");

global.Tablesort = require("tablesort");

global.Chartkick = Chartkick;

Chartkick.addAdapter(Chart);
Chart.defaults.global.legend.display = false;

$(document).ready(() => {
  LocalTime.start();

  $('[data-toggle="tooltip"]').tooltip({ delay: 500, trigger: "hover" });
});


import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

const application = Application.start()
const context = require.context("controllers", true, /.js$/)
application.load(definitionsFromContext(context))

console.log("Hello World from Webpacker & Stimulus");
