var Maps = function () {
	"use strict";
    //function to initiate GMaps
    //Gmaps.js allows you to use the potential of Google Maps in a simple way.
    //For more information, please visit http://hpneo.github.io/gmaps/documentation.html
    var runMaps = function () {
        // Basic Map 
       var  map = new GMaps({
            el: '#map1',
            lat: 51.959388,
            lng: 4.581676
        });

        
        //Markers

        map.addMarker({
            lat: 51.959388,
            lng: 4.581676,
            title: 'OQBA',
            details: {
                database_id: 42,
                author: 'OQBA'
            }
        });
        map.addMarker({
            lat: 51.959388,
            lng: 4.581676,
            title: 'OQBA B.V.',
            height: '200px',
            infoWindow: {
                content: '<p>OQBA B.V. Hoofdkantoor - Essebaan 19A, 2908LJ,  Capelle a/d IJssel</p>'
            }
        });
    };
    return {
        //main function to initiate template pages
        init: function () {
            runMaps();
        }
    };
}();