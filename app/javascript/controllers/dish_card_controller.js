import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dish-card" and ...
// shows hide the dish card on the Ingredients, Recipe and Review pages
// --------------------------------------------------------------------
export default class extends Controller {
  connect() {
    console.log("dish-card controller-hello");

    // Hide parent show card
    const caretDwnBtn = document.querySelector(".dish-drop-btn");
    const dishContent = document.querySelector(".dish-reviews-card");

    caretDwnBtn.addEventListener('click', (event) => {

      dishContent.classList.toggle('d-none');
      dishContainer.classList.toggle('d-none');
    })

    // Hide card show parent
    const caretUpBtn = document.querySelector(".dish-up-btn");
    const dishContainer = document.querySelector(".dish-card-simple");

    caretUpBtn.addEventListener('click', (event) => {

      dishContent.classList.toggle('d-none');
      dishContainer.classList.toggle('d-none');
    })
  }
}
