import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="home-nav-btn"
export default class extends Controller {
  // static targets = ["menu"]

  connect() {

    // const menuIcons = "<li class="home-tab-menu-item"><span class="home-tab-menu-icon"><i style="color: #261127" class="fa-solid fa-book-atlas fa-lg"></i></span><span class="home-tab-menu-text">Home</span></li>;

    const menuBar = document.querySelector('.nav-btn');

    menuBar.addEventListener('click', (event) => {
      // console.log(event);
      menuBar.classList.toggle('home-tab-menu');
    });

    // const menuItems = document.querySelectorAll('.home-tab-menu-item');
    // let previousSelectedItem;

    // menuItems.forEach (item => {
    //   item.addEventListener("click", () => {
    //     previousSelectedItem?.classList.remove('home-tab-menu-active');
    //     previousSelectedItem = item;
    //     item.classList.add('home-tab-menu-active');
    //   })
    // })

  // showMenu() {
  //   console.log(this.menuTarget)
  //   this.menuTarget.innerHTML = "<h2>Cooking History</h2> <hr> <p>1. Lasagna</p>"
  }
}
