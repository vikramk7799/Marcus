function initMap() {
    var uluru = {lat: 12.9024492, lng: 77.6318219};
    var map = new google.maps.Map(document.getElementById('map'), {
        zoom: 15,
        center: uluru
    });
    var marker = new google.maps.Marker({
        position: uluru,
        map: map
    });
}