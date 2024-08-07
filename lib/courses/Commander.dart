import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';


class Commander extends StatelessWidget {
  const Commander({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  Completer<GoogleMapController> _controller = Completer();

  FocusNode searchIconFocus = FocusNode();
  late BitmapDescriptor customMarker;

  bool isVisible = false;

  static final CameraPosition _kGooglePlex =  CameraPosition(target: LatLng(51.5072, 0.1276), zoom: 14);

  List<MarkerModel> setMarkerInfo = [
    MarkerModel(LatLng(6.448511, 2.331027), "1", 1, "AO1"),
    MarkerModel(LatLng(6.464648, 2.331901), "1", 1, "A02"),
    MarkerModel(LatLng(6.433220, 2.346321), "1", 1, "A03"),
    MarkerModel(LatLng(6.425373, 2.333360), "0", 1, "AO4"),
  ];

  final List<Marker> marker = [];
  @override
  void initState() {
    super.initState();
    loadData();
    setMarkerInfo.forEach((element) async {
      marker.add(
        Marker(
          markerId: MarkerId({setMarkerInfo.indexOf(element) + 1}.toString()),
          position: element.latLng!,
          infoWindow: InfoWindow(title: 'Position ${element.code.toString()}'),
          icon: await BitmapDescriptor.defaultMarker,
          onTap: () {
            FocusScope.of(context).unfocus();
            isVisible = true;
            setState(() {});
          },
        ),
      );
    });
    setState(() {});
    searchIconFocus.addListener(() {
      setState(() {});
    });
  }

  void onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  void loadData() async {
    marker.add(
      Marker(
        markerId: MarkerId("${marker.length + 1}"),
        position: LatLng(6.4503024, 2.3468195),
        infoWindow: InfoWindow(title: 'Votre quartier'),
        icon: await BitmapDescriptor.defaultMarker,
      ),
    );
    CameraPosition cameraPosition =
    CameraPosition(target: LatLng(6.4503024, 2.3468195), zoom: 14);
    GoogleMapController controller = await _controller.future;
    controller.animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    setState(() {});
  }

  @override
  void dispose() {
    searchIconFocus.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: Stack(
          children: [
            GoogleMap(
              initialCameraPosition: _kGooglePlex,
              onMapCreated: onMapCreated,
              mapType: MapType.normal,
              markers: Set<Marker>.of(marker),
              onTap: (argument) {
                FocusScope.of(context).unfocus();
                isVisible = false;
                setState(() {});
              },
            ),
            Positioned(
              top: 50,
              right: 16,
              left: 16,
              child: Material(
                elevation: 8,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8)),
                color: Colors.white,
                child: TextField(
                  focusNode: searchIconFocus,
                  cursorColor: Theme.of(context).primaryColor,
                  cursorWidth: 1,
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: 'marker',
                    suffixIcon: Icon(
                      Icons.location_on,
                      color:
                      searchIconFocus.hasFocus ? Colors.green : Colors.grey,
                    ),
                    prefixIcon: Icon(Icons.arrow_back),
                    contentPadding: EdgeInsets.symmetric(vertical: 15),
                  ),
                  onTap: () {
                    isVisible = false;
                    setState(() {});
                  },
                ),
              ),
            ),
            Positioned(
              bottom: 16,
              left: 0,
              right: 0,
              child: Visibility(
                visible: isVisible,
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.33,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0)),
                      child: displayMarkerInfo(context),
                    ),
                    Positioned(
                      right: 5,
                      top: -15,
                      child: GestureDetector(
                        onTap: () {
                          isVisible = false;
                          setState(() {});
                        },
                        child: Container(
                          decoration: BoxDecoration(
                              color: Colors.grey,
                              borderRadius: BorderRadius.circular(20)),
                          child:
                          Icon(Icons.close, color: Colors.white, size: 25),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget displayMarkerInfo(BuildContext context) {
    return PageView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: setMarkerInfo.length,
      physics: BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        MarkerModel newTemp = setMarkerInfo[index];
        return GestureDetector(
          onTap: () {},
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 16),
              child: Text("Info du marker : ${newTemp.code}"
              )
          ),
        );
      },
    );
  }
}

class MarkerModel {
  double? geoLong;
  double? geoLng;
  LatLng? latLng;
  String? code;
  String? status;
  int? quartierId;
  String? name = "Position";

  MarkerModel(this.latLng, this.status, this.quartierId, this.code);
}
