
import 'package:random_practice/model/location.dart';
import 'package:flutter/material.dart';
import 'package:random_practice/widget/lat_long_widget.dart';

class ImageWidget extends StatelessWidget{
  final Location location;
  const ImageWidget({
    @required this.location,
    Key key,
}): super(key: key);
  @override
  Widget build(BuildContext context){
    final size = MediaQuery.of(context).size;
    return Container(

      padding: EdgeInsets.symmetric(horizontal: 15),
      height: size.height*0.5,
      width: size.width*0.8,
      child: Container(
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(color: Colors.black26,blurRadius: 2,spreadRadius: 1),
          ],
              borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
    child: Stack(
    children: [
      buildImage(),
      Container(
       padding: const EdgeInsets.all(8),
       child: Column(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           buildBottomText(),
           LatLongWidget(location: location),

         ],
       ),
      ),

    ],
    ),
      ),
    );
  }
  
Widget buildBottomText() => Text(
  location.name,
  style: TextStyle(
    letterSpacing: 2,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontStyle: FontStyle.normal,
    fontSize: 20,
  ),
);
  Widget buildImage() => SizedBox.expand(
      child: ClipRRect(
      borderRadius: BorderRadius.all(Radius.circular(8)),
  child: Image.asset(location.urlImage,fit: BoxFit.cover,),
      ),
      );

}