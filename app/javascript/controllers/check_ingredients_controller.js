import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="check-ingredients"
export default class extends Controller {
  static targets = ['box','word']

  connect() {
    // const checkB = document.querySelector('.ingredients-checkbox-item');
    // const tickB = document.querySelector('.checkbox-item')

    // checkB.addEventListener('click', (event) => {
    //   tickB.classList.toggle('fa-regular');
    //   tickB.classList.toggle('fa-circle');
    //   tickB.classList.toggle('fa-solid');
    //   tickB.classList.toggle('fa-circle-check');
    //   console.log('testing')
    };

  checkBox(e) {
    console.log("check-ingredients controller-hello");
    this.boxTarget.classList.toggle('fa-regular');
    this.boxTarget.classList.toggle('fa-circle');
    this.boxTarget.classList.toggle('fa-solid');
    this.boxTarget.classList.toggle('fa-circle-check');
    this.wordTarget.classList.toggle('ingredients-p-check');
  }
}
