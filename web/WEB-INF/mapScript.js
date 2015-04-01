
function map(position) {
    var mapcanvas = document.createElement('map');
    mapcanvas.id = 'mapcontainer';
    mapcanvas.style.heigth = '400px';
    mapcanvas.style.width = '100%'
    document.querySelector('article').appendChild(map);
    var coords = new google.maps.LatLng(position.coords.latitude,
            position.coords.longitude);
    var options = {
         zoom: 15,
         center: coords,
         mapTypeControl: false,
         navigationControlOptions : {
             style : google.maps.NavigationnControlStyle.SMALL
         },
         mapTypeId : google.maps.MapTypeId.ROADMAP
     };
    
    var map = new google.maps.Maps(document.getElementById("mapcontainer"));
}