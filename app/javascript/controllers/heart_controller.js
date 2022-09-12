import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="heart"
export default class extends Controller {
  static targets = ["heart"]

  connect() {
    const favourite = document.querySelector('.dish-heart-btn');
    const favBtn = document.querySelector('.dish-fa-heart')


    favourite.addEventListener('click', (event) => {
      favBtn.classList.toggle('fa-regular');
      favBtn.classList.toggle('fa-solid');
    });
  }

  // colorHeart(event) {
  //   this.element.classList.toggle('fa-regular');
  //   this.element.classList.toggle('fa-solid');
  // }
}
