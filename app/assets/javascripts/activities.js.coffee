initializeMap = ->
    latlng = new google.maps.LatLng $('#map_canvas').data('lat'),$('#map_canvas').data('long')
    myOptions =
      center: latlng
      zoom: 13,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    map = new google.maps.Map $('#map_canvas')[0], myOptions
    marker = new google.maps.Marker
      position: latlng
      map: map
      animation: google.maps.Animation.DROP,
    styles = [
      {
        stylers: [
          { hue: "#00ffe6" },
          { saturation: -50 }
        ]
      }]
    map.setOptions({styles: styles})
$ ->
    initializeMap();
