import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class MyMapScreen extends StatefulWidget {
  const MyMapScreen({Key? key}) : super(key: key);

  @override
  State<MyMapScreen> createState() => _MyMapScreenState();
}

class _MyMapScreenState extends State<MyMapScreen> {
  GoogleMapController? mapController;
  Set<Marker> markers = {};
  LatLng myLocation = const LatLng(27.704649, 85.329569);
//  LatLng florida = const LatLng(57.5681266, -94.26746);
  @override
  void initState() {
    markers.add(
      Marker(
        markerId: MarkerId(myLocation.toString()),
        position: myLocation,
        infoWindow: const InfoWindow(
          title: 'Bus',
          snippet: "Near",
        ),
        icon: BitmapDescriptor.defaultMarker,
      ),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("Outlet Location")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(
              'https://www.google.com/maps/d/u/0/thumbnail?mid=1NH6MA2VGQpFVxZiAxWxM1iz-KA0&hl=en_US',
              height: 400,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Text(
                "Our Buses",
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey.shade700,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 400,
              child: GoogleMap(
                  zoomGesturesEnabled: true,
                  initialCameraPosition: CameraPosition(
                    target: myLocation,
                    zoom: 16,
                  ),
                  markers: markers,
                  mapType: MapType.normal,
                  onMapCreated: (controller) {
                    setState(() {
                      mapController = controller;
                    });
                  }),
            ),
          ],
        ),
      ),
    );
  }
}