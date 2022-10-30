import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

// Connects to data-controller="typed-js"
export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["Estar pendiente del estudio de tu hijo... ¡Nunca fue tan fácil!"],
      typeSpeed: 50,
      loop: true
    })
  }
}
