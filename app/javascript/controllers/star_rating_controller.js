import { Controller } from "@hotwired/stimulus"
// Import library
import StarRating from "star-rating.js"

// Connects to data-controller="star-rating"
export default class extends Controller {
  connect() {
    new StarRating(this.element)
    console.log("conected to stars")
  }
}
