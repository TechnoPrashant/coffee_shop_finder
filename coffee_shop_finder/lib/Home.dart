import 'package:coffee_shop_finder/Menu.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';
import 'package:coffee_shop_finder/utils/ColorUtils.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GoogleMapController mapController;
  Marker _marker1 = new Marker(
      markerId: MarkerId('Cafe Coffee Day'),
      position: LatLng(22.2954031, 70.7690204),
      icon: BitmapDescriptor.fromAsset('images/pin1.png'),
      infoWindow: InfoWindow(title: 'Cafe Coffee Day'),
      onTap: () {});
  Marker _marker2 = new Marker(
      markerId: MarkerId('Starbucks Coffee'),
      position: LatLng(25.3967194, 69.7266369),
      icon: BitmapDescriptor.fromAsset('images/pin2.png'),
      infoWindow: InfoWindow(title: 'Starbucks Coffee', onTap: () {}));
  Map<String, Marker> _markers = {};

  @override
  void initState() {
    // TODO: implement initState
    _markers['Cafe Coffee Day'] = _marker1;
    _markers['Starbucks Coffee'] = _marker2;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            GoogleMap(
              onMapCreated: (GoogleMapController controller) {},
              markers: _markers.values.toSet(),
              initialCameraPosition: CameraPosition(
                target: LatLng(28.5272181, 77.0688991),
                zoom: 5,
              ),
              compassEnabled: true,
              mapType: MapType.normal,
              myLocationEnabled: true,
              myLocationButtonEnabled: true,
              zoomGesturesEnabled: true,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: BottomSlider('Starbucks Coffee'),
            ),
          ],
        ));
  }

/*Widget bottomSlider(String str) {
    return
  }*/
}

class BottomSlider extends StatefulWidget {
  var title;

  @override
  _BottomSliderState createState() => _BottomSliderState(this.title);

  BottomSlider(this.title);
}

class _BottomSliderState extends State<BottomSlider> {
  var title;
  var strTitle = 'Exploer Coffee Shop';

  _BottomSliderState(this.title);

  @override
  Widget build(BuildContext context) {
    return SlidingUpPanel(
        padding: EdgeInsets.only(left: 20, right: 10),
        onPanelClosed: () {
          setState(() {
            strTitle = 'Exploer Coffee Shop';
          });
        },
        onPanelOpened: () {
          setState(() {
            strTitle = title;
          });
        },
        borderRadius: BorderRadius.all(Radius.circular(15)),
        panel: Container(
            child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 6),
              height: 5,
              width: 50,
              decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.black.withOpacity(.40),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
            ),
            Padding(
              padding: EdgeInsets.only(top: 20),
              child: Text(
                strTitle,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: ColorsUtils().themeDark,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '4,23 mi',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: ColorsUtils().textColor),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Icon(
                    Icons.watch_later,
                    color: ColorsUtils().themeDark,
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    '20 min',
                    style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: ColorsUtils().textColor),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 20, right: 20, top: 60),
              width: double.maxFinite,
              child: FlatButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Menu();
                  }));
                },
                child: Padding(
                  padding: EdgeInsets.only(top: 20, bottom: 20),
                  child: Text(
                    'View Menu',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.w500),
                  ),
                ),
                color: ColorsUtils().themeDark,
                shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadiusDirectional.all(Radius.circular(30))),
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Padding(
                padding: EdgeInsets.only(top: 30),
                child: RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Address\n',
                      style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 22)),
                  TextSpan(
                      text:
                          '1/83, Ground Floor,\nClub Rd, West Punjabi Bagh,\nDelhi, 110026',
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w300,
                          color: Colors.black.withOpacity(.50)))
                ])),
              ),
            )
          ],
        )));
  }
}
