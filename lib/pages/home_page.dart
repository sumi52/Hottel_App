import 'package:flutter/material.dart';
import 'package:flutter_hero_animation/hotel_item.dart';
import 'package:flutter_hero_animation/temp_db.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late Size size;
  @override
  Widget build(BuildContext context) {
    size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Hero Animation'),
        ),
      body: ListView.builder(  //ListView defult constructor r Listview.builder constructor er eki kaj jst ekhane barti sudhu index
        itemCount: hotels.length,  //ekekta hotel er jonno ekekta widget banabo,then index dhore dhore oi collection
                                 // er jonno hotel er object ber korbo & information gulo show korbo,& e dhoroner kaj gulo always
                                 //aladha widget baniye korbo jmn: lib e hotel_item name e dart file nibo
        itemBuilder: (context, index) {
          return HotelItem(hotel: hotels[index]); //[index]parameter hisabe je hiotel er object ta dite hobe se hocche hotels je
                    //collection er index,tar mane 0num hotel,1 num hotel etc e je index ache serial vabe,egulo purota e ekta hotel
        },
      ),
    );
  }
  ListView buildListView() {
    return ListView(      // alada method hisabe thaklo
      //scrollDirection: Axis.horizontal,  // ager moto vartically rakhte chai tai eta k desible kore dilam
      children: items.map((item) => SizedBox(          //ekhon sizedBox er o poyojon nai tao rakhlam
        width: size.width, // vertically kore dichi tai size.width na dile o hoto
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(        //tileVColor gulo buja jacche na tai ListTile ke (alt + enter) wrap with padding er modhe rakhbo
            tileColor: Colors.grey,  //list gulor color dilam, ekhon SizedBox na dile o chole tao rakhlam
            title: Text(item),
          ),
        ),
      )).toList(),
    );
  }
}

