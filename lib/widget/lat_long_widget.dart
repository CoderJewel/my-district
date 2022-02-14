
import 'package:random_practice/model/location.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class LatLongWidget extends StatelessWidget{
  final Location location;

  const LatLongWidget ({

    @required this.location,
    Key key,
}): super (key: key);

  @override
  Widget build(BuildContext context) => Row(
    crossAxisAlignment: CrossAxisAlignment.end ,
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: [
      Text(
       location.latitude,
       style: TextStyle(color: Colors.red,
       ),
      ),
      IconButton(onPressed:
      (){},
          icon: Icon(Icons.location_on,
            color: Colors.greenAccent,
          ),
      ),
      Text(
        location.longitude,
        style: TextStyle(color: Colors.greenAccent),
      )
    ],

  );
}