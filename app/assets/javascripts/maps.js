function initMap() {
  var map = new google.maps.Map(document.getElementById('map'), {
    center: new google.maps.LatLng(0, 0),
    zoom: 3
  });

  var json = JSON.parse(document.getElementById('map').getAttribute('data-destinations'));
  for (var i = 0, length = json.length; i < length; i++) {
    var data = json[i];
    var latLng = new google.maps.LatLng(data.latitude, data.longitude);
    // bounds  = new google.maps.LatLngBounds();
    var infowindow = new google.maps.InfoWindow({
    });

    // Creating a marker and putting it on the map
    var marker = new google.maps.Marker({
      position: latLng,
      map: map,
      labelContent: data.activity
    });

    //setting infowindow to open on click with info relating to relevant bound marker
    map.setCenter(marker.getPosition());
    marker.addListener('click', function() {
      infowindow.setContent(this.labelContent);
      infowindow.open(map, this);
    });
  }
}

