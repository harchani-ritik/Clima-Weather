import 'package:geolocator/geolocator.dart';

class Location {
  double lat;
  double long;

  Future<void> getCurrentLocation() async {
    Position position = await Geolocator()
        .getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
    long = position.longitude;
    lat = position.latitude;
  }
}
