import { Controller } from "@hotwired/stimulus"
import MapboxGeocoder from "@mapbox/mapbox-gl-geocoder"

// Connects to data-controller="address-autocomplete"
export default class extends Controller {
  static values = { apiKey: String}
  static targets = ["location"]

  connect() {
    this.geocoder = new MapboxGeocoder({
      accessToken: this.apiKeyValue,
      types: "postcode, address",
      countries: "fr",
      bbox: [
        2.224225,
        48.815607,
        2.469709,
        48.902012
      ],
      center: [
        2.3483915,
        48.8534951
      ],
      
    })
    this.geocoder.addTo(this.element)
    this.geocoder.on("result", event => this.#setInputValue(event))
    this.geocoder.on("clear", () => this.#clearInputValue())
  }

  #setInputValue(event) {
    this.locationTarget.value = event.result["place_name"]
  }

  #clearInputValue() {
    this.locationTarget.value = ""
  }
}
