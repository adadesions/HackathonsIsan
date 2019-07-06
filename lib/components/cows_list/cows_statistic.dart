import 'package:flutter/material.dart';
import 'package:flutter/material.dart' as prefix0;
import 'package:flutter_circular_chart/flutter_circular_chart.dart';

class CowsStatistic extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CowStatisticState();
  }
}

class _CowStatisticState extends State<CowsStatistic> {
  @override
  Widget build(BuildContext context) {
    final GlobalKey<AnimatedCircularChartState> _chartKey =
        new GlobalKey<AnimatedCircularChartState>();
    final totallyCow = 100;
    final breededCow = 30;
    final heatingCow = 40;
    final normallyCow = 20;

    final double breeded_percent = 100 * breededCow / totallyCow;
    final double heatining_percent = 100 * heatingCow / totallyCow;
    final double normally_percent = 100 - breeded_percent;

    final String textInHole =
        breededCow.toString() + '/' + heatingCow.toString() + '\n' + '  B/H';

    return Row(children: <Widget>[
      AnimatedCircularChart(
        key: _chartKey,
        size: Size(200, 200),
        initialChartData: <CircularStackEntry>[
          new CircularStackEntry(
            <CircularSegmentEntry>[
              new CircularSegmentEntry(
                breeded_percent,
                Theme.of(context).accentColor,
                rankKey: 'breeded',
              ),
              new CircularSegmentEntry(normally_percent, Colors.blueGrey[600],
                  rankKey: 'normally'),
              new CircularSegmentEntry(heatining_percent, Colors.orange,
                  rankKey: 'heat')
            ],
            rankKey: 'Cow Statistics',
          ),
        ],
        chartType: CircularChartType.Radial,
        percentageValues: false,
        holeLabel: textInHole,
        labelStyle: new TextStyle(
          color: Theme.of(context).primaryColor,
          fontWeight: FontWeight.bold,
          fontSize: 24.0,
        ),
      ),
      Container(
        height: 150,
        padding: EdgeInsets.only(left: 10),
        decoration: BoxDecoration(
            border: Border(left: BorderSide(width: 2, color: Colors.grey))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            StatText(numerical: totallyCow.toString(), label: 'Totally Cows'),
            StatText(numerical: breededCow.toString(), label: 'In insemination'),
            StatText(numerical: heatingCow.toString(), label: 'Heating'),
          ],
        ),
      )
    ]);
  }
}

class StatText extends StatelessWidget {
  final String numerical;
  final String label;

  StatText({this.numerical, this.label});

  @override
  Widget build(BuildContext context) {
    final String showText = numerical + ' ' + label;
    final TextStyle inDepthStyle = new prefix0.TextStyle(
        fontSize: 16, fontWeight: FontWeight.bold, color: Colors.grey[700]);

    return Padding(
      padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
      child: Text(showText, style: inDepthStyle),
    );
  }
}
