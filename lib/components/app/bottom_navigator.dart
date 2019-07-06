import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class BottomNavigator extends StatelessWidget {
  final String title;

  BottomNavigator({this.title});

  @override
  Widget build(BuildContext context) {
    final double screenWidth = MediaQuery.of(context).size.width;
    final double boxWidth = screenWidth / 4;

    print(this.title);
    return BottomAppBar(
      color: Theme.of(context).primaryColor,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          BottomItemNav(
            width: boxWidth,
            iconPath: 'assets/images/menu-cow.png',
            routePath: '/cows_list',
            isActive: this.title == 'cows list',
          ),
          BottomItemNav(
            width: boxWidth,
            iconPath: 'assets/images/menu-my_farm.png',
            routePath: '/my_farm',
            isActive: this.title == 'my farm',
          ),
          BottomItemNav(
            width: boxWidth,
            iconPath: 'assets/images/menu-heat.png',
            routePath: '/heat',
            isActive: this.title == 'heat',
          ),
          BottomItemNav(
            width: boxWidth,
            iconPath: 'assets/images/menu-breeding.png',
            routePath: '/breeding',
            isActive: this.title == 'breeding',
          ),
        ],
      ),
    );
  }
}

class BottomItemNav extends StatelessWidget {
  final double width;
  final String iconPath;
  final String routePath;
  final bool isActive;

  BottomItemNav({this.width, this.iconPath, this.routePath, this.isActive});

  @override
  Widget build(BuildContext context) {
    final double iconHeight = 30.0;

    return InkWell(
        onTap: () => Navigator.pushNamed(context, this.routePath),
        child: Container(
          decoration: BoxDecoration(
              color: this.isActive ? Theme.of(context).accentColor : Theme.of(context).primaryColor,
              border:
                  Border(right: BorderSide(width: 1.0, color: Colors.transparent ))),
          width: this.width,
          padding: EdgeInsets.all(10),
          child: Image.asset(
            iconPath,
            height: iconHeight,
          ),
        ));
  }
}
