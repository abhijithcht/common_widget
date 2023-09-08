import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class Googlemap1 extends StatefulWidget {
  const Googlemap1({Key? key}) : super(key: key);

  @override
  State<Googlemap1> createState() => _Googlemap1State();
}

class _Googlemap1State extends State<Googlemap1> {
  String location = 'Press the button';
  String address = 'Search';

  final TextStyle _style = const TextStyle(fontSize: 16, color: Colors.black);

  Future<Position> geoLocationPosition() async {
    bool serviceEnabled;
    LocationPermission permission;
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      await Geolocator.openLocationSettings();
      return Future.error(
        'Location Services are Down.',
      );
    }
    permission = await Geolocator.requestPermission();
    if (permission == LocationPermission.denied) {
      return Future.error(
        'Location Permissions are denied.',
      );
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error(
        'Location Permissions are denied, we cannot request Permissions.',
      );
    }
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
  }

  Future<void> getAddressFromLatLong(Position position) async {
    List<Placemark> placeMarks = await placemarkFromCoordinates(
      position.latitude,
      position.longitude,
    );
    if (kDebugMode) {
      print(
        placeMarks,
      );
    }
    Placemark place = placeMarks[0];
    address =
        '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        foregroundColor: Colors.black,
        elevation: 0,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'COORDINATES:',
                  style: _style,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  location,
                  style: _style,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'ADDRESS:',
                  style: _style,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  address,
                  style: _style,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
              onPressed: () async {
                Position position = await geoLocationPosition();
                location =
                    'Lat: ${position.latitude}, Long: ${position.longitude}';
                getAddressFromLatLong(position);
                setState(() {});
              },
              child: const Text(
                'LOCATE',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
