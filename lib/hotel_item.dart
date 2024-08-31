import 'package:flutter/material.dart';
import 'package:flutter_hero_animation/pages/second_page.dart';
import 'package:flutter_hero_animation/temp_db.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class HotelItem extends StatefulWidget {
  final Hotel hotel;  //temp_db.dart file e Hotel(id1-id2) pojonto joto index thakbe,
                  // sb gulo index wise alada alada sb gulo ekhane powa jabe,ekhane ekta hotel object nibo & constructor e dibo
  const HotelItem({super.key, required this.hotel});  // ei je required this.hotel eta constructor e dilam

  @override
  State<HotelItem> createState() => _HotelItemState();
}

class _HotelItemState extends State<HotelItem> {
  @override
  Widget build(BuildContext context) {

    return Padding(      //padding dile 1ta hotel space then arekta hotel er details evabe thakbe,char pash theke space thakbe
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {      //image e click korle tap hobe,2nd page e jower jonno
          Navigator.pushNamed(context, SecondPage.routeName, arguments: widget.hotel);
          },
        child: Card(                              //ekhane card widget nibo
          elevation: 10,                         //shadow bariye deyar jonno
          shape: RoundedRectangleBorder(        // card er charpashe round dibo tai shape use korbo,
                                               // card er defult background clr hocche white
            borderRadius: BorderRadius.circular(16)
          ),
          child: Column(   //card er child hisabe jehetu sb upore niche ache image,Listtile,text,tar mane amak ekhon 1ta column dite hobe

            children: [
              Stack(      //column er 1st child hocche image,image k 1ta stack er modhe rakhte hobe,karon image er age 1ta icon ache
                children: [
                   ClipRRect(     // just card er uporer matha katte (round) korte eta use korbo
                   borderRadius: BorderRadius.only(
                   topRight: Radius.circular(16),
                   topLeft: Radius.circular(16),
                   ),
                       child: Hero(    //transition annimation korar jonno,Hero tag always unic hote hoye
                         tag: widget.hotel.id,     //hero widget e ei tag mandatory, 5ta image e hero tag er modhe ache,unic id
                         child: Image.network(    // ei image widget ta k wrap with widget kore rakhbo ClipRRect e,
                                                  // karon card er uporer matha katte (round) korte eta use korbo
                           widget.hotel.image,
                           width: double.maxFinite,
                           height: 200,
                           fit: BoxFit.cover,   //cover ta dile width,heigh zoom kore ney
                         ),
                       ),
                   ),
                    Positioned(
                      right: 0,   //card er icon right e thakbe tai
                      child: IconButton(
                          icon: Icon(widget.hotel.favorite ? Icons.favorite: Icons.favorite_border), //jar icon hobe depend korteche hotel
                                                     //ki favorite kora ache naki tar upor
                          onPressed: () {},
                        ),
                    ),
                ],
              ),
              ListTile(
                title: Text(   //title e show korbe hotel er name
                  widget.hotel.name,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold),
                ),
                trailing: Text(  //hotel er price show korar jonno
                  '\$${widget.hotel.price}',   //$$ diye price show kore
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,  //star gulo ke left e anar jonno
                  children: [
                    Text(   //hotel ar address show korar jonno
                      widget.hotel.address
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,  //cdenter theke jate suru na hoy tai ,jodio by defult start e thake eta deyar poyojon nai
                      children: [
                        RatingBar.builder(    //search pub.dev then flutter_rating_bar theke code copy
                          itemSize: 20,       // star er size choto korar jonno
                          ignoreGestures: true, //eta use e rating e rating full,half mane rating deya off hoye jabe
                          initialRating: 3,
                          minRating: 1,
                          direction: Axis.horizontal,
                          allowHalfRating: true,
                          itemCount: 5,
                          itemPadding: EdgeInsets.symmetric(horizontal: 0), //4.0 ke 0 kore dilam star gulor space komanor jonno
                          itemBuilder: (context, value) {
                            return Icon(Icons.star, color: Colors.amber,);
                          },
                          onRatingUpdate: (value){

                          },
                        ),
                        SizedBox(width: 5,), //star & 80 review's er modhe space deyar jonno
                        Text('80 reviews'), //review show korar jonno,padding dile val lagbe tai card er age padding dibo
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
