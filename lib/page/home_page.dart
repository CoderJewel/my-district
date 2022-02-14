import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:random_practice/config/staticconfig.dart';
import 'package:random_practice/page/searchpage.dart';
import 'package:random_practice/widget/locations_widget.dart';


class HomePage extends StatelessWidget {


  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: appprimaryColor,
        appBar: buildAppBar(context),
        body: LocationsWidget(),
        bottomNavigationBar: buildBottomNavigation(),
      );

  Widget buildAppBar(context) => AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          'AMAR DESH',
          style: TextStyle(color: Colors.greenAccent),
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: Icon(
              Icons.camera_alt_outlined,
              color: Colors.greenAccent,
            ),
            onPressed: () {
            },
          ),
        ],
        leading: IconButton(
          icon: Icon(
            Icons.article_outlined,
            color: Colors.greenAccent,
          ),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => SearchPage()));
          },
        ),
      );

  Widget buildBottomNavigation() => BottomNavigationBar(
        elevation: 0,
        unselectedItemColor: Colors.white54,
        selectedItemColor: Colors.white,
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.pin_drop_outlined,
              color: Colors.greenAccent,
            ),
            label: 'jjjjjjj',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.add_location,
              color: Colors.greenAccent,
            ),
            label: 'jjjjjjj',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_outline,
              color: Colors.greenAccent,
            ),
            label: 'jjjjjjj',
          ),
        ],
      );
}
