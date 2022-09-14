import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="heart"
export default class extends Controller {
  static targets = ["heart"]

  connect() {
    const favourite = document.querySelector('.dish-heart-btn');
    const favBtn = document.querySelector('.dish-fa-heart')

    console.log('hello, how are you today?')

    favourite.addEventListener('click', (event) => {
      favBtn.classList.toggle('fa-regular');
      favBtn.classList.toggle('fa-solid');
      favBtn.classList.toggle('fa-colour-red');
      console.log(favouriteReview);
      console.log(favBtn);
    });
  }

  // colorHeart(event) {
  //   this.element.classList.toggle('fa-regular');
  //   this.element.classList.toggle('fa-solid');
  // }
}
