import { Controller } from "@hotwired/stimulus"
import mapboxgl from 'mapbox-gl'

// Connects to data-controller="map"
export default class extends Controller {
  static targets = [ 'containerMap', 'markers', 'granny' ]

  static values = {
    apiKey: String,
    markers: Array
  }
  connect() {
    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.containerMapTarget,
      style: "mapbox://styles/clarawilner/cllqchvcx007b01pfetewaa39"
    })

    this.#addMarkersToMap()
    this.#fitMapToMarkers()

  }

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const customMarker = document.createElement("div")
      const popup = new mapboxgl.Popup().setHTML(marker.info_window_html)
      customMarker.innerHTML = marker.marker_html
      new mapboxgl.Marker(customMarker)
        .setLngLat([ marker.lng, marker.lat ])
        .addTo(this.map)
    })
  }

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 })
  }

  hoverMarkers(event) {
    const granny = event.currentTarget.dataset.num
    const granniesArray = this.grannyTargets.filter(function(x) { return x !== granny })
    const markers = this.markersTargets.filter(function(x) {
      if (x.dataset.num !== granny) {
        return x
      }
    })
    markers.forEach(marker => { marker.hidden = true })
  }

  displayMarkers() {
    this.markersTargets.forEach(marker => {
      marker.hidden = false
    })
  }
}
