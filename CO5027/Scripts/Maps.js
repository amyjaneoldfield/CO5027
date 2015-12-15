
var map;
function initMap() {
    map = new google.maps.Map(document.getElementById('map'), {
        center: { lat: 53.267946, lng: -2.820568 },
        zoom: 14
    });

   
    var myLatLng = { lat: 53.276392, lng: -2.828632 };

        var marker = new google.maps.Marker({
            position: myLatLng,
            map: map,
            title: 'Benefit Headquarters'
        });
    
}