import 'dart:async';

import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class TrainLocationControlle extends GetxController{
CameraPosition? kGooglePlex ;
Position? currentLocation;
StreamSubscription<Position>? postionStream;
GoogleMapController? googleMapController;
var lat ;
var long ; 

   Future getPermetion() async {
    bool servies;
    LocationPermission per;
    servies = await Geolocator.isLocationServiceEnabled();
    if(servies == false){
      }
per  = await Geolocator.checkPermission();
if( per ==LocationPermission.denied){
    per = await Geolocator.requestPermission();
    
  }
  print("per");
  }
    
   Future<void> getlangAndlat() async{
    currentLocation =   await Geolocator.getCurrentPosition().then((value) => value);
     lat = currentLocation!.latitude;
     long  = currentLocation!.longitude;
    kGooglePlex = CameraPosition(
    target: LatLng(lat, long),
    zoom: 16.4746,
  );
  mymarker.add(Marker(markerId:MarkerId("1") , position:LatLng(lat, long),));
  
  update();
print("lat&lang");
  }
  
  void initState() {
     postionStream = Geolocator.getPositionStream().listen((Position position) {

        changemarker(position.latitude, position.longitude);
      }); 
    getPermetion();
    getlangAndlat();
    print("instate");
  }
  
  
Set<Marker> mymarker = {

} ; 

changemarker (newlat , newlong){
mymarker.remove(Marker(markerId: MarkerId("1")));
mymarker.add(Marker(markerId: MarkerId("1") , position: LatLng(newlat, newlong)));
googleMapController!.animateCamera(CameraUpdate.newLatLng(LatLng(newlat, newlong)));

update();
print("chan"); 
}

}