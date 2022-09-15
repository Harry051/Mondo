import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="review-fav"
export default class extends Controller {

  connect() {
    const reviewBtn = document.querySelector('.dish-heart-btn-review');
    const favBtn = document.querySelector('.dish-fa-heart')

    console.log("review-fav - controller-hello");

    reviewBtn.addEventListener('click', (event) => {
      favBtn.classList.toggle('fa-regular');
      favBtn.classList.toggle('fa-solid');
      favBtn.classList.toggle('fa-colour-red');
      console.log('how are you today?')
    });
  }
}
