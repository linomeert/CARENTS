import mapboxgl from 'mapbox-gl';
import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const initMapbox = () => {
  const mapElement = document.getElementById('map');

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/tibal/cjzmfc2dd0r5j1clje4yi43d2'
      // style: "mapbox://styles/mapbox/streets-v10"
    });
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken }));

    const markers = JSON.parse(mapElement.dataset.markers);

    markers.forEach((marker) => {
      const popup = new mapboxgl.Popup().setHTML(marker.infoWindow);
      const containerElement = document.createElement('div')
      containerElement.style.width = '25px';
      containerElement.style.height = '25px';
      const element = new DOMParser().parseFromString(
        '<svg id="Laag_1" data-name="Laag 1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 361 520.89"><defs><style>.cls-1{fill:url(#Naamloos_verloop_22);}.cls-2{fill:#8cd923;stroke:#246d0c;stroke-width:5px;}.cls-2,.cls-3{stroke-miterlimit:10;}.cls-3{fill:#fff;stroke:#fff;stroke-width:3px;}</style><radialGradient id="Naamloos_verloop_22" cx="180" cy="483.89" r="80.39" gradientUnits="userSpaceOnUse"><stop offset="0"/><stop offset="1" stop-color="#fff" stop-opacity="0"/></radialGradient></defs><title>map-marker_protecting-rhinos</title><ellipse class="cls-1" cx="180" cy="483.89" rx="107.5" ry="37"/><g id="Nav-on-scroll-Copy"><path id="maps-and-flags-copy-7" class="cls-2" d="M184.5,274.5A88.5,88.5,0,1,1,273,186,88.6,88.6,0,0,1,184.5,274.5Zm.5-265C86.85,9.5,7,89.6,7,188.05,7,310.22,166.29,489.59,173.08,497.17a16,16,0,0,0,23.84,0C203.71,489.59,363,310.22,363,188.05,363,89.6,283.15,9.5,185,9.5Z" transform="translate(-4.5 -7)"/></g><circle class="cls-3" cx="180" cy="179" r="87.68"/></svg>',
        'application/xml'
      );

      containerElement.appendChild(element.children[0])

      new mapboxgl.Marker(containerElement)
        .setLngLat([ marker.lng, marker.lat ])
        .setPopup(popup)
        .addTo(map);
    });

    const fitMapToMarkers = (map, markers) => {
      const bounds = new mapboxgl.LngLatBounds();
      markers.forEach(marker => bounds.extend([ marker.lng, marker.lat ]));
      map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
    };
    fitMapToMarkers(map, markers);

    const togglebtn = document.getElementById('map_toggle_l');
    togglebtn.addEventListener("click", (event) => {
      mapElement.classList.toggle("hide");
      map.resize()
    });


  }
}

export { initMapbox };
