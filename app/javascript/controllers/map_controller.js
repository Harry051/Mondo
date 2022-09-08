import { Controller } from "@hotwired/stimulus";
import mapboxgl from 'mapbox-gl';

export default class extends Controller {
  static values = {
    apiKey: String,
    markers: Array
  };

  connect() {

    console.log("Hello Map")

    mapboxgl.accessToken = this.apiKeyValue

    this.map = new mapboxgl.Map({
      container: this.element,
      projection: 'globe',
      style: "mapbox://styles/harry051/cl7j2z4pn001l14p9rxykle8f",
      zoom: 1
    });
    this.#addMarkersToMap();
    this.#fitMapToMarkers();
  };

  #addMarkersToMap() {
    this.markersValue.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.info_window)
      const customMarker = document.createElement("div")
      customMarker.className = "marker"
      customMarker.style.backgroundImage = `url('${marker.image_url}')`
      customMarker.innerHTML = marker.image_url;
      customMarker.style.backgroundSize = "contain"
      // customMarker.style.width = "1px"
      // customMarker.style.height = "1px"
      customMarker.style.backgroundRepeat = "no-repeat"
      new mapboxgl.Marker(customMarker)
        .setLngLat([ marker.lng, marker.lat ])
        // .setPopup(popup)
        .addTo(this.map)
    });
  };

  #fitMapToMarkers() {
    const bounds = new mapboxgl.LngLatBounds()
    this.markersValue.forEach(marker => bounds.extend([ marker.lng, marker.lat ]))
    this.map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 2400 })
  };
}
