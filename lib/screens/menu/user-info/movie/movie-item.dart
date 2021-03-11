import 'package:flutter/material.dart';

import '../../../../constants.dart';

class MovieItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(child: Divider(
                color: kTextLightColor,
                height: 5,
              )),
              SizedBox(
                width: 10,
                height: 20,
              ),
              Text("Today",
                  style: TextStyle(
                      fontSize: 15,
                      color: kSecondaryColor,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                width: 10,
                height: 20,
              ),
              Expanded(child: Divider(
                color: kTextLightColor,
                height: 5,
              ))
            ],
          ),
          SizedBox(
            height: 10,
          ),

          Card(
            child: Padding(
              padding: EdgeInsets.only(left: 10, bottom: 5, top: 5, right: 10),
              child: Row(
                children: [
                  Image(image: AssetImage('assets/images/poster_1.jpg'), width: 80),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Bloodshot", style: TextStyle(fontSize: 18)),
                        Text(
                            "American car designer Carroll Shelby and driver Kn Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order",
                            style: TextStyle(fontSize: 12)),
                        Row(
                          children: [
                            MaterialButton(onPressed: (){}, child: Row(children: [
                              Text("Rate", style: TextStyle(fontSize: 13),),
                              IconButton(icon: Icon(Icons.star_rate)),
                            ],),),
                            MaterialButton(onPressed: (){}, child: Row(children: [
                              Text("Share", style: TextStyle(fontSize: 13)),
                              IconButton(icon: Icon(Icons.share_outlined)),
                            ]))
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            child: Row(
              children: [
                Image(image: AssetImage('assets/images/poster_2.jpg'), width: 80),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ford v Ferrari", style: TextStyle(fontSize: 18)),
                        Text(
                            "American car designer Carroll Shelby and driver Kn Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order",
                            style: TextStyle(fontSize: 12)),
                        Row(
                          children: [
                            MaterialButton(onPressed: (){}, child: Row(children: [
                              Text("Rate", style: TextStyle(fontSize: 13),),
                              IconButton(icon: Icon(Icons.star_rate)),
                            ],),),
                            MaterialButton(onPressed: (){}, child: Row(children: [
                              Text("Share", style: TextStyle(fontSize: 13)),
                              IconButton(icon: Icon(Icons.share_outlined)),
                            ]))
                          ],
                        )
                      ],
                    ))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(child: Divider(
                color: kTextLightColor,
                height: 5,
              )),
              SizedBox(
                width: 10,
                height: 20,
              ),
              Text("Yesterday",
                  style: TextStyle(
                      fontSize: 15,
                      color: kSecondaryColor,
                      fontWeight: FontWeight.bold)),
              SizedBox(
                width: 10,
                height: 20,
              ),
              Expanded(child: Divider(
                color: kTextLightColor,
                height: 5,
              ))
            ],
          ),
          SizedBox(
            height: 10,
          ),

          Card(
            child: Row(
              children: [
                Image(image: AssetImage('assets/images/poster_1.jpg'), width: 80),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Bloodshot", style: TextStyle(fontSize: 18)),
                        Text(
                            "American car designer Carroll Shelby and driver Kn Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order",
                            style: TextStyle(fontSize: 12)),
                        Row(
                          children: [
                            MaterialButton(onPressed: (){}, child: Row(children: [
                              Text("Rate", style: TextStyle(fontSize: 13),),
                              IconButton(icon: Icon(Icons.star_rate)),
                            ],),),
                            MaterialButton(onPressed: (){}, child: Row(children: [
                              Text("Share", style: TextStyle(fontSize: 13)),
                              IconButton(icon: Icon(Icons.share_outlined)),
                            ]))
                          ],
                        )
                      ],
                    ))
              ],
            ),
          ),
          Card(
            child: Row(
              children: [
                Image(image: AssetImage('assets/images/poster_2.jpg'), width: 80),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Ford v Ferrari", style: TextStyle(fontSize: 18)),
                        Text(
                            "American car designer Carroll Shelby and driver Kn Miles battle corporate interference and the laws of physics to build a revolutionary race car for Ford in order",
                            style: TextStyle(fontSize: 12)),
                        Row(
                          children: [
                            MaterialButton(onPressed: (){}, child: Row(children: [
                              Text("Rate", style: TextStyle(fontSize: 13),),
                              IconButton(icon: Icon(Icons.star_rate)),
                            ],),),
                            MaterialButton(onPressed: (){}, child: Row(children: [
                              Text("Share", style: TextStyle(fontSize: 13)),
                              IconButton(icon: Icon(Icons.share_outlined)),
                            ]))
                          ],
                        )
                      ],
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
