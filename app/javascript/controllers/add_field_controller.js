import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="add-field"
export default class extends Controller {
  static targets = ["span", "addbutton", "valueinput", "valueinput2"]

  add(e) {
    e.preventDefault()
    this.spanTarget.classList.remove("d-none")
    this.addbuttonTarget.classList.add("d-none")
    this.valueinputTarget.disabled = false
    this.valueinput2Target.disabled = false
  }

  delete(e) {
    e.preventDefault()
    this.spanTarget.classList.add("d-none")
    this.addbuttonTarget.classList.remove("d-none")
    this.valueinputTarget.disabled = true
    this.valueinput2Target.disabled = true
  }
}
