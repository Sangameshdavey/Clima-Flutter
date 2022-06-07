import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;

  Future<Position> getCurrentLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.bestForNavigation);
      latitude = position.latitude;
      longitude = position.longitude;
      print(position);
      return position;
    } catch (e) {
      print(e);
      return null;
    }
  }
}
