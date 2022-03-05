import 'package:flutter/material.dart';
import 'package:linkedin_clone/screens/home_management.dart';
import 'package:linkedin_clone/screens/initial_setup/confirm_location.dart';
import 'package:linkedin_clone/stores/login_store.dart';
import 'package:location/location.dart';
import 'package:provider/provider.dart';

import '../helpers/radar_handler.dart';
import '../main.dart';
import 'initial_setup/login.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);
  static String id = 'splash';

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    initialize();
    super.initState();
  }

  void initialize() async {
    // Ensure all permissions are collected for Locations
    Location _location = Location();
    bool? _serviceEnabled;
    PermissionStatus? _permissionGranted;

    _serviceEnabled = await _location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await _location.requestService();
    }

    _permissionGranted = await _location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await _location.requestPermission();
    }

    // Get the current user location
    LocationData _locationData = await _location.getLocation();

    // Get the current user address
    String currentAddress = (await getParsedAddressWithReverseGeoCode(
        _locationData.latitude!, _locationData.longitude!));

    // Store the user location in sharedPreferences
    sharedPreferences.setDouble('latitude', _locationData.latitude!);
    sharedPreferences.setDouble('longitude', _locationData.longitude!);
    sharedPreferences.setString('current-address', currentAddress);

    LoginStore loginStore = Provider.of<LoginStore>(context, listen: false);
    bool isAlreadyAuthenticated =
        await loginStore.isAlreadyAuthenticated(context);
    Widget nextPage = const Login();

    if (isAlreadyAuthenticated) {
      nextPage = const ConfirmLocation();
      if (sharedPreferences.containsKey('details-in-firestore') == true) {
        nextPage = const HomeManagement();
      }
    }

    Navigator.pushAndRemoveUntil(
        context, MaterialPageRoute(builder: (_) => nextPage), (route) => false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Image.asset(
            'assets/image/linkedin-image.png',
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
