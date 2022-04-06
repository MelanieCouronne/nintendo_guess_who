// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
// require("@fortawesome/fontawesome-free/js/all");
require("@fortawesome/fontawesome-free");

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"
import "@fortawesome/fontawesome-free/css/all.css";

Rails.start()
Turbolinks.start()
ActiveStorage.start()

// External imports
import "bootstrap";

// Stimulus import
import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"


// Stimulus
const application = Application.start()
const context = require.context("controllers", true, /_controller\.js$/)
application.load(definitionsFromContext(context))


// Internal imports, e.g:
import { selectedCharacter } from '../plugins/selected_character';
import { displayQuestions } from "../plugins/display_questions";
import { displayBorder } from "../plugins/display_border";
import { displayComputerDashboard } from "../plugins/display_computer_dashboard";

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  selectedCharacter();
  displayQuestions();
  displayBorder();
  displayComputerDashboard();
});
