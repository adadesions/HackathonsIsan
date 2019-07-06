import 'package:checkmate/components/app/bottom_navigator.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bezier_chart/bezier_chart.dart';

class HeatMonitoringPage extends StatefulWidget {
  final Map<String, dynamic> cowInfo;

  HeatMonitoringPage({this.cowInfo});

  @override
  State<StatefulWidget> createState() {
    return _HeatMonitoringPageState();
  }
}

class _HeatMonitoringPageState extends State<HeatMonitoringPage> {
  String _url = '';

  getLatestUrl() async {
    StorageReference ref =
        FirebaseStorage.instance.ref().child('pics/lastest.jpg');
    dynamic furl = (await ref.getDownloadURL()).toString();
    if (mounted) {
      setState(() {
        _url = furl;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    getLatestUrl();

    return Scaffold(
      appBar: AppBar(
        title: Text('heats monitoring 🔥'.toUpperCase()),
      ),
      body: CustomScrollView(slivers: <Widget>[
        SliverList(
          delegate: SliverChildListDelegate(
            [
              _HeatHeader(
                imagePath: _url,
              ),
              ListTile(
                leading: Icon(
                  Icons.insert_chart,
                  color: Colors.green,
                ),
                title: Text("Heat Historical Graph",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
              ),
              _HeatGraph(context),
              Padding(
                padding: EdgeInsets.only(top: 5),
                child: ListTile(
                  leading: Icon(
                    Icons.center_focus_weak,
                    color: Colors.green,
                  ),
                  title: Text("Above Id: CM19950005",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  subtitle: Text("below Id: CM19950005",
                      style: TextStyle(
                        color: Colors.grey[700],
                        fontSize: 14,
                      )),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    child: Text("Do by Myself",
                        style: TextStyle(fontSize: 16)),
                    textColor: Colors.white,
                    color: Colors.blueAccent,
                    padding: EdgeInsets.all(13),
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, '/main_menu'),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0))
                  ),
                  Padding(padding: EdgeInsets.all(20),),
                  RaisedButton(
                    child: Text("Call Doctor",
                        style: TextStyle(fontSize: 16)),
                    textColor: Colors.white,
                    color: Colors.green,
                    padding: EdgeInsets.all(13),
                    onPressed: () =>
                        Navigator.pushReplacementNamed(context, '/main_menu'),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0))
                  )
                ],
              )
            ],
          ),
        ),
      ]),
      bottomNavigationBar: BottomNavigator(),
    );
  }
}

class _HeatHeader extends StatelessWidget {
  final dynamic imagePath;

  _HeatHeader({this.imagePath});

  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Image.network(
          imagePath,
          fit: BoxFit.contain,
          height: 200,
        ),
        Positioned(
            top: 170,
            child: Container(
              height: 30,
              width: MediaQuery.of(context).size.width,
              alignment: Alignment.bottomCenter,
              color: Color.fromRGBO(0, 0, 0, 0.7),
              child: Image.asset('assets/images/osd_logo.png'),
            )),
      ],
    );
  }
}

Widget _HeatGraph(BuildContext context) {
  final fromDate = DateTime(2019, 06, 20);
  final toDate = DateTime.now();

  final date0 = DateTime.now().subtract(Duration(days: 5));
  final date1 = DateTime.now().subtract(Duration(days: 2));
  final date2 = DateTime.now().subtract(Duration(days: 3));

  return Center(
    child: Container(
      color: Colors.red,
      height: MediaQuery.of(context).size.height * 0.3,
      width: MediaQuery.of(context).size.width,
      child: BezierChart(
        fromDate: fromDate,
        bezierChartScale: BezierChartScale.WEEKLY,
        toDate: toDate,
        selectedDate: toDate,
        series: [
          BezierLine(
            label: "times",
            onMissingValue: (dateTime) {
              if (dateTime.day.isEven) {
                return 10.0;
              }
              return 5.0;
            },
            data: [
              DataPoint<DateTime>(value: 30, xAxis: date0),
              DataPoint<DateTime>(value: 40, xAxis: date1),
              DataPoint<DateTime>(value: 50, xAxis: date2),
            ],
          ),
        ],
        config: BezierChartConfig(
          verticalIndicatorStrokeWidth: 5.0,
          verticalIndicatorColor: Colors.black26,
          showVerticalIndicator: true,
          verticalIndicatorFixedPosition: false,
          footerHeight: 40.0,
          backgroundGradient: LinearGradient(
            colors: [
              Colors.red[200],
              Colors.red[400],
              Colors.red[600],
              Colors.red[800],
              Colors.red,
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          snap: false,
        ),
      ),
    ),
  );
}
