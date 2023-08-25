import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dynamic-booking-price"
export default class extends Controller {
  static targets = [ 'startDateInput', 'endDateInput', 'priceHolder', 'daysHolder' ]
  static values = { price: Number }

  connect() {
  }

  setPriceValue() {
    // Replace the text inside the priceHolder target with the value argument
    if (this.startDateInputTarget.value && this.endDateInputTarget.value) {
      const days = this.diffInDays()
      this.priceHolderTarget.innerText = days * this.priceValue
    }
  }

  setDaysValue() {
    if (this.startDateInputTarget.value && this.endDateInputTarget.value) {
      this.daysHolderTarget.innerText = this.diffInDays()
    }
  }

  diffInDays() {
    // Calculate the difference between the two dates only if they both
    // are defined (they are undefined if an input has no value)
      // retrieve the difference between the two dates in milliseconds
      const diffTime = (Date.parse(this.endDateInputTarget.value) - Date.parse(this.startDateInputTarget.value))
      // Turn milliseconds to days
      if (diffTime >= 0) {
        var days = Math.ceil(diffTime / (1000 * 60 * 60 * 24)) + 1
      }
      else {
        var days = 0
      }
    // Add 1 day by default
    return days
  }
}
