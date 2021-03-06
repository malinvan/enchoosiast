// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")


// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)


// ----------------------------------------------------
// Note(lewagon): ABOVE IS RAILS DEFAULT CONFIGURATION
// WRITE YOUR OWN JS STARTING FROM HERE 👇
// ----------------------------------------------------

// External imports
import "bootstrap";
import swal from 'sweetalert';

// Internal imports, e.g:
import { showPopUp } from '../components/register-popup'
// import { initSelect2 } from '../components/init_select2';
import { initNavbar } from '../components/navbar';

import { initCarousel } from '../components/questions_carousel';


import { initCareerGrid } from '../components/career-grid';

import { clickShow } from '../components/show_text';

import { initLandingpageAnimation } from '../components/text-animation';

import { masonry } from '../components/masonry';

import { popupGuide } from '../components/popup-guide';

document.addEventListener('turbolinks:load', () => {
  // Call your functions here, e.g:
  // initSelect2();
  const alert = document.querySelector('.sweetalert')
  if (alert) {
    swal({
      title: "Congratulations!",
      text: "You took the first steps....",
      icon: "success",
      buttons: ["Complete later", "Complete profile"],

    });
  };
  initCareerGrid();
  showPopUp();
  initNavbar();
  clickShow();
  initCarousel();
  initLandingpageAnimation();
  masonry();
  popupGuide();
});
