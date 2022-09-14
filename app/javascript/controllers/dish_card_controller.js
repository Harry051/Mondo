import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dish-card"
export default class extends Controller {
  connect() {
    console.log("dish-card control active");

    const caretDwnBtn = document.querySelector(".dish-drop-btn");
    const dishContent = document.querySelector(".dish-reviews-card");

    caretDwnBtn.addEventListener('click', (event) => {

      dishContent.classList.toggle('d-none');
      dishContainer.classList.toggle('d-none');
    })

    const caretUpBtn = document.querySelector(".dish-up-btn");
    const dishContainer = document.querySelector(".dish-card-simple");

    caretUpBtn.addEventListener('click', (event) => {

      dishContent.classList.toggle('d-none');
      dishContainer.classList.toggle('d-none');
    })
  }
}
