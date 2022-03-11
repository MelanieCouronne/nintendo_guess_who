// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.
require("@fortawesome/fontawesome-free/js/all")

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

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
import { displayBtn } from "../plugins/display_btn";
import { guesswhoSubmit } from "../plugins/guesswho_submit";

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  selectedCharacter();
  displayBtn();
  guesswhoSubmit();
});
