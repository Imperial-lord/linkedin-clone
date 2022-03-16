// ----------------------------- Radar Reverse Geocode Query -----------------------------
import 'package:linkedin_clone/requests/radar_geocoding.dart';

Future<String> getParsedAddressWithReverseGeoCode(
    double latitude, double longitude) async {
  var response = await getAddressFromLocationUsingRadar(latitude, longitude);
  var address = response['addresses'][0];
  String formattedAddress =
      '${address['city']}, ${address['state']}, ${address['country']}';
  return formattedAddress;
}
