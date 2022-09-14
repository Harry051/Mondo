import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="review-fav-login"
export default class extends Controller {


  connect() {
    const reviewLogBtn = document.querySelector('.dish-heart-btn');
    const favBtn = document.querySelector('.dish-fa-heart')

    console.log('review-fav-login controller-hello');

    reviewLogBtn.addEventListener('click', (event) => {
      favBtn.classList.toggle('fa-regular');
      favBtn.classList.toggle('fa-solid');
      favBtn.classList.toggle('fa-colour-red');
      console.log('testing?')
    });
  }
}
