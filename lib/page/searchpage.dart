//@dart=2.9
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:random_practice/config/staticconfig.dart';
import 'package:random_practice/data/imageList.dart';


class SearchPage extends StatefulWidget {

  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appprimaryColor,
      appBar: AppBar(
        title: Text('AMAR DESH',style: TextStyle(color: Colors.greenAccent),
        ),
        backgroundColor: Colors.transparent,
      ),
        body:
        Column(
              children: [
                Card(
                  color: Colors.transparent,
                  shadowColor: Colors.white24,
                  elevation: 2,
                  child: SizedBox(
                    height: 300,
                    width: double.infinity,
                    child: Swiper(
                      autoplay: true,
                      layout: SwiperLayout.TINDER,
                      itemHeight:300 ,
                      itemWidth: 400,
                      itemCount:imageList.length ,
                      viewportFraction: 3,
                      curve: Curves.ease,
                      itemBuilder: (context, index){
                        return Image.asset(imageList[index],
                            fit: BoxFit.cover,
                        );

                      },
                    ),

                  ),
                ), SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 150,
                        width: 120,
                        color: Colors.greenAccent.shade400,
                        child: Icon(Icons.agriculture),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 150,
                        width: 120,
                        color: Colors.greenAccent.shade400,
                        child: Icon(Icons.apartment),
                      ),
                      SizedBox(
                        width: 5,
                      ),

                      Container(
                        height: 150,
                        width: 120,
                        color: Colors.greenAccent.shade400,
                        child: Icon(Icons.assistant_photo),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        height: 150,
                        width: 120,
                        color: Colors.greenAccent.shade400 ,
                        child: Icon(Icons.add_a_photo),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 150,
                        width: 120,
                        color: Colors.greenAccent.shade400,
                        child: Icon(Icons.auto_awesome_mosaic),
                      ),
                      SizedBox(
                        width: 5,
                      ),

                      Container(
                        height: 150,
                        width: 120,
                        color: Colors.greenAccent.shade400,
                        child: Icon(Icons.auto_awesome_motion,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),

                    ],
                  ),
                ),

                // nicer code gulo akhane post korle onno rokom view asbe

              ],

            ),

    );
  }
}


