
// ignore_for_file: unnecessary_null_comparison

import 'dart:async';

import 'package:flutter/material.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:geocoding/geocoding.dart';
// import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrainLocation extends StatefulWidget {
  const TrainLocation({super.key});

  @override
  State<TrainLocation> createState() => _TrainLocationState();
}

class _TrainLocationState extends State<TrainLocation> {
    
  late Position currentLocation;
  late StreamSubscription<Position> postionStream;
   var lat ; 
   var long ; 
  late CameraPosition _kGooglePlex ; 
  
  Future getPermetion() async {
    bool servies;
    LocationPermission per;
    servies = await Geolocator.isLocationServiceEnabled();
    if(servies == false){
      print("disable");
      }
per  = await Geolocator.checkPermission();
if( per ==LocationPermission.denied){
    per = await Geolocator.requestPermission();
    
  }
    print(per);
  }
    
   Future<void> getlangAndlat() async{
    currentLocation =   await Geolocator.getCurrentPosition().then((value) => value);
     lat = currentLocation.latitude;
     long  = currentLocation.longitude;
    _kGooglePlex = CameraPosition(
    target: LatLng(lat, long),
    zoom: 16.4746,
  );
  mymarker.add(Marker(markerId:MarkerId("1") , position:LatLng(lat, long),));
  
  setState(() {
    
  });

  }
  @override
  void initState() {
     postionStream = Geolocator.getPositionStream().listen((Position position) {

        changemarker(position.latitude, position.longitude);
      }); 
    getPermetion();
    getlangAndlat();
    super.initState();
  }
  
  late GoogleMapController googleMapController;

Set<Marker> mymarker = {

} ; 

changemarker (newlat , newlong){
mymarker.remove(Marker(markerId: MarkerId("1")));
mymarker.add(Marker(markerId: MarkerId("1") , position: LatLng(newlat, newlong)));
googleMapController.animateCamera(CameraUpdate.newLatLng(LatLng(newlat, newlong)));

setState(() {
  
});
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         if (_kGooglePlex == null) const CircularProgressIndicator() else SizedBox(
          child: GoogleMap(
            markers: mymarker,
      mapType: MapType.normal,
      initialCameraPosition: _kGooglePlex,
      onMapCreated: (GoogleMapController controller) {
      googleMapController = controller ; 
      },
      ),
         height: 500.0,
         width: 400.0,
         ),
        //   TextButton(onPressed: ()async{
        // //      CurrentLocation = await getlangAndlat();
        // //      print("Latitude  ${CurrentLocation.latitude}");
        // //       print("Longitude  ${CurrentLocation.longitude}");
        // //       List<Placemark> placemark = 
        // //  await placemarkFromCoordinates(CurrentLocation.latitude,CurrentLocation.longitude);
        // //  print(placemark[0].country);
        // //  print(placemark[0].administrativeArea);
        // //  print(placemark[0].street);
        // //  var distanceBetween = await Geolocator.distanceBetween(startLatitude, startLongitude, endLatitude, endLongitude);
        // //  var distanceKm = distanceBetween / 1000; 
        // //  print(distanceKm);
        //   }, child:Text("data"))
        ],
      ) 
    );
  }
}
//AIzaSyBeXTvN6qdamnx6Db947PXxflAbhKPYCck



// import 'dart:async';

// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';
// // import 'package:flutter_polyline_points/flutter_polyline_points.dart';

// class MapSample extends StatefulWidget {
//   const MapSample({Key? key}) : super(key: key);

//   @override
//   State<MapSample> createState() => MapSampleState();
// }

// class MapSampleState extends State<MapSample> {
//   final Completer<GoogleMapController> _controller =
//       Completer<GoogleMapController>();

//   static const CameraPosition _kGooglePlex = CameraPosition(
//     target: LatLng(37.42796133580664, -122.085749655962),
//     zoom: 30,
//   );

//   static const CameraPosition _kLake = CameraPosition(
//       bearing: 192.8334901395799,
//       target: LatLng(25.683214, 32.626760),
//       tilt: 59.440717697143555,
//       zoom: 19.151926040649414);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Container(
//         decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
//         padding: EdgeInsets.all(20),
//         child: GoogleMap(
//           mapType: MapType.normal,
//           initialCameraPosition: _kGooglePlex,
//           onMapCreated: (GoogleMapController controller) {
//             _controller.complete(controller);
//           },
//         ),
//       ),
//       floatingActionButton: FloatingActionButton.extended(
//         onPressed: _goToTheLake,
//         label: const Text('To MY Location! '),
//         icon: const Icon(Icons.directions_boat),
//       ),
//     );
//   }

//   Future<void> _goToTheLake() async {
//     final GoogleMapController controller = await _controller.future;
//     controller.animateCamera(CameraUpdate.newCameraPosition(_kLake));
//   }
// }