import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Estar pendiente de la educación de tus hijos... <br/> ¡Nunca fue tan fácil!"],
      typeSpeed: 50,
      loop: true
    })
  }
}
