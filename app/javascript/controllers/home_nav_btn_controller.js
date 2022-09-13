import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="home-nav-btn"
export default class extends Controller {
  // static targets = ["menu"]

  connect() {

    console.log('XX');

    const menuBar = document.querySelector('.home-nav');
    const menuNav = document.querySelector('.nav-btn');
    // const menuItems = document.querySelectorAll('.home-tab-menu-item');
    const menuItems = document.querySelector('.home-tab-menu-tabs');

    menuNav.addEventListener('click', (event) => {
      menuBar.classList.toggle('home-tab-menu');
      menuItems.classList.toggle('d-none');
      // menuItems.forEach (item => {
      //   item.classList.toggle('d-none');
      // });
    });
  };
}
