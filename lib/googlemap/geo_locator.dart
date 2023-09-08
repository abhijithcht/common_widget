import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class GeoLocatorMap extends StatefulWidget {
  const GeoLocatorMap({super.key});

  @override
  State<GeoLocatorMap> createState() => _GeoLocatorMapState();
}

class _GeoLocatorMapState extends State<GeoLocatorMap> {
  Position? _currentPosition;
  String? _currentAddress;
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pinkAccent,
        foregroundColor: Colors.black,
        title: const Text(
          'G E O L O C A T O R',
          style: TextStyle(
            fontSize: 26,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (_currentAddress != null) Text(_currentAddress!),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 12),
              child: MaterialButton(
                onPressed: _isLoading ? null : _getCurrentLocation,
                child: _isLoading
                    ? const CircularProgressIndicator()
                    : const Text(
                        "LOCATE",
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<Position> _determinePosition() async {
    LocationPermission permission;
    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    return await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.best,
      forceAndroidLocationManager: true,
    );
  }

  _getCurrentLocation() async {
    setState(() {
      _isLoading = true;
    });
    try {
      final Position position = await _determinePosition();

      setState(() {
        _currentPosition = position;
        _getAddressFromLatLng();
      });
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      _showErrorSnackBar("An error occurred while fetching location");
    } finally {
      setState(() {
        _isLoading = false;
      });
    }
  }

  _getAddressFromLatLng() async {
    try {
      final List<Placemark> placeMarks = await placemarkFromCoordinates(
        _currentPosition!.latitude,
        _currentPosition!.longitude,
      );

      final Placemark place = placeMarks[0];

      setState(() {
        _currentAddress = "${place.street}, "
            "${place.locality}, ${place.postalCode}, ${place.administrativeArea}, ${place.country}";
      });
    } catch (e) {
      if (kDebugMode) {
        print(e);
      }
      _showErrorSnackBar("An error occurred while fetching location");
    }
  }

  void _showErrorSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Colors.red,
        behavior: SnackBarBehavior.floating,
        margin: const EdgeInsets.all(16),
        dismissDirection: DismissDirection.horizontal,
        duration: const Duration(seconds: 3),
      ),
    );
  }
}
