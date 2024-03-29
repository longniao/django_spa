import React, { useEffect, useRef } from "react";
import { Wrapper, Status } from "@googlemaps/react-wrapper";
import axios from 'axios';

const render = (status: Status) => {
  return <h1>{status}</h1>;
};

function MapComponent({
  center,
  zoom,
}: {
  center: google.maps.LatLngLiteral;
  zoom: number;
}) {
  const ref = useRef();

  useEffect(() => {
    const map = new window.google.maps.Map(ref.current, {
      center,
      zoom,
    });
    const infoWindow = new google.maps.InfoWindow();

    axios.defaults.headers.common['Access-Control-Allow-Origin'] = ''
    axios.get(`http://127.0.0.1:8000/map/`)
      .then(res => {
        console.log(res.data);
      })

    const marker = new google.maps.Marker({
      position: center,
      map,
      title: "Hello World!",
    });
    marker.addListener("click", () => {
      infoWindow.close();
      infoWindow.setContent(marker.getTitle());
      infoWindow.open(marker.getMap(), marker);
    });
  });

  return <div ref={ref} id="map" />;
}

function Map() {
  const center = { lat: 23.81279624881605, lng: 90.42770590528086 };
  const zoom = 11;

  return (
    <div>
      <h2>Map</h2>
      <hr />
      <Wrapper apiKey="" render={render}>
        <MapComponent center={center} zoom={zoom} />
      </Wrapper>
    </div>
  );
  
}

export default Map;