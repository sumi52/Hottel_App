import 'package:flutter/material.dart';

import '../temp_db.dart';

class SecondPage extends StatefulWidget {
  static const String routeName ='/ second_page';
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  late Hotel hotel; 

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    hotel = ModalRoute.of(context)!.settings.arguments as Hotel;  
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     // appBar: AppBar(title: Text(hotel.name),),   

      body: CustomScrollView(       
        slivers: [        
          SliverAppBar(          
           // pinned: true,         
            floating: true,       
            expandedHeight: 350,  
            flexibleSpace: FlexibleSpaceBar(   
              title: Text(hotel.name),      
              background:  Hero(          
                tag: hotel.id,           
                                          
                child: Image.network(
                  hotel.image,             
                  width: double.maxFinite,
                  height: 350,
                  fit: BoxFit.cover,   
                ),
              ),
            ),
          ),

          SliverList(         
            delegate: SliverChildListDelegate([      
              ListTile(  
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

  ListView buildListView() {   
    return ListView(  
      children: [
        Hero(            
          tag: hotel.id, 
          child: Image.network(
            hotel.image,       
            width: double.maxFinite,
            height: 350,
            fit: BoxFit.cover,   
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
