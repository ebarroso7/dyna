// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

require("@rails/ujs").start()
require("turbolinks").start()
require("@rails/activestorage").start()
require("channels")

import Vue from 'vue/dist/vue.esm'
import App from '../app.vue'

document.addEventListener("turbolinks:load", function(){
  var saved_locations_element = document.querySelector("#saved_locations")
  if (saved_locations_element != undefined){
    const app = new Vue({
      el: saved_locations_element,
      data: {
        saved_locations: JSON.parse(saved_locations_element.dataset.savedLocations)
      },
      template: "<App :savedLocations='saved_locations' />",
      components: { App }
    })
  }

  var location_element = document.querySelector("#location")
  console.log("location_element", location_element)
  if (location_element != undefined){
    console.log("FOUND ELEMENT!!!")
    console.log(location_element)
    const app = new Vue({
      el: location_element,
      data: {
        deliveries: JSON.parse(location_element.dataset.deliveries)
      },
      template: "<App :deliveries='deliveries' />",
      components: { App }
    })
  }

})
// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)
