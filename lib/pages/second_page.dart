import 'package:flutter/material.dart';

import '../temp_db.dart';

class SecondPage extends StatefulWidget {
  static const String routeName ='/ second_page';
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late Hotel hotel; //hotel je niye asbo seta k recive korar jonno

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    hotel = ModalRoute.of(context)!.settings.arguments as Hotel;  //hotel gulo 2nd page e show korar jonno dite hobe
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(title: Text(hotel.name),),   //selvers widget nibo tai appBar k baad diye dilam

      body: CustomScrollView(       //eta ekta scroller view,scroll behaviour ta custom korte parbo
        slivers: [        //ekhon cacchi 2ta widget er modhe ekta communicate korte
          SliverAppBar(           //slivers er 1st child hocche sliverAppBar
           // pinned: true,         //texta automatically animate hoye jacche,eta na dile upore uthle sathe sthe e AppBar chole asbe
            floating: true,       //uprer dike ektu scroll korle e jani AppBar ta chole ase,beshikhun jate wait korte na hoy e
                                 // jonno use kora, eta k paralize effect
            expandedHeight: 350,  //image er height ta dibo
            flexibleSpace: FlexibleSpaceBar(   //flexibleSpace e ekta widget dite hobe
              title: Text(hotel.name),      //eta deyate hotel gulor name show hobe
              background:  Hero(          //je image e je Hero item e click kore 2nd page e jacchi 2tar e Hero tag jeno soman hoy, ei tag ta
                tag: hotel.id,            //deyar age je annimation ta hocche seta piuro page tai zooming & zoom out hocche,but ei tag er jonno
                                             // ekhon je hotel e click korbo just oita e zooming & zoom out hobe
                child: Image.network(
                  hotel.image,             //hotel.item file theke image.netwok copy korbo just widget .(dot) ta baad dibo
                  width: double.maxFinite,
                  height: 350,
                  fit: BoxFit.cover,   //cover ta dile width,heigh zoom kore ney
                ),
              ),
            ),
          ),

          SliverList(          //slivers er 2nd child hocche sliverList
            delegate: SliverChildListDelegate([      //children ta ekta delegate property er madhome dite hoy,([])ekhane list of widget
              ListTile(   //evar save dile ager moto hoye jabe
                title: Text(hotel.name),
                subtitle: Text(hotel.address),
                trailing: Text('\$${hotel.price}'),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(description),
              ),

            ]),

          ),
        ],
      ),

    );
  }

  ListView buildListView() {   //ekta aladha method baniye rakhlam
    return ListView(  //boro page hole scrolling korte hobe tar jonno SingleChildScrolling column ba ListView nite hobe,but amra ListView nibo
      children: [
        Hero(            //je image e je Hero item e click kore 2nd page e jacchi 2tar e Hero tag jeno soman hoy, ei tag ta deyar age je
          tag: hotel.id,  //annimation ta hocche seta piuro page tai zooming & zoom out hocche,but ei tag er jonno
                          // ekhon je hotel e click korbo just oita e zooming & zoom out hobe
          child: Image.network(
            hotel.image,       //hotel.item file theke image.netwok copy korbo just widget .(dot) ta baad dibo
            width: double.maxFinite,
            height: 350,
            fit: BoxFit.cover,   //cover ta dile width,heigh zoom kore ney
          ),
        ),
        ListTile(
          title: Text(hotel.name),
          subtitle: Text(hotel.address),
          trailing: Text('\$${hotel.price}'),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(description),
        ),
      ],
    );
  }
}
