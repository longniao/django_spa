import React, { useEffect, useRef, ReactElement } from "react";
import { Wrapper, Status } from "@googlemaps/react-wrapper";

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
    new window.google.maps.Map(ref.current, {
      center,
      zoom,
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