final List<String> items = List.generate(100, (index) => 'Item ${index + 1}');

final List<Hotel> hotels = [  //dynamically generate korte hobe
  Hotel(id: 1, name: 'Hotel Royal Tulip', address: 'Coxsbazar, Chittagong', rating: '8.1', price: 7000, description: 'Set in Brasilia and within 5.3 km of Palace of Justice, Royal Tulip Brasília Alvorada features a bar, non-smoking rooms, and free WiFi throughout the property.', image: 'https://seapearlcoxsbazar.com/20230826135945im_/http_/www.seapearlcoxsbazar.com/images/rt005.jpg'),
  Hotel(id: 2, name: 'Hotel Sea Moon', address: 'Coxsbazar', rating: '6.9', price: 3500, description: 'Hotel Sea Cox is set in Coxs Bazar, less than 1 km from Coxs Bazar Sea Beach. This 3-star hotel offers a 24-hour front desk, an ATM and free WiFi. ', image: 'https://pbs.twimg.com/media/FceAVBKaUAIDCCO.jpg'),
  Hotel(id: 3, name: 'Radisson Blue Hotel', address: 'Hotel in Deira, Dubai', rating: '8.4', price: 8125.51, description: 'The Radisson Blu lies within the beautiful Deira Creek area of Dubai, a short walk to the bus and metro stations and only 7 kilometers from Dubai International Airport. ', image: 'https://cdn-img.readytotrip.com/t/1024x768/content/f6/51/f651cd552512ad5a330246f6383b1ab822777609.jpeg'),
  Hotel(id: 4, name: 'Media One Hotel', address: 'Hotel in Dubai Media City, Dubai', rating: '8.6', price: 10048.12, description: 'Media One Hotel offers trendy accommodation in a convenient location, just 2 km from Dubai Marina. Guest facilities include free Wi-Fi access, an outdoor pool and a fully-equipped gym. ', image: 'https://b.zmtcdn.com/data/pictures/5/204505/b3478b24f1669e3abee148b9e30d2e30.jpg'),
  Hotel(id: 5, name: 'The H Dubai', address: 'Hotel in Trade Center, Dubai', rating: '8.3', price: 13787.77, description: 'Located in Dubai, 1 km from Dubai World Trade Centre, The H Dubai provides accommodation with an outdoor swimming pool, free private parking, a fitness centre and a terrace. In a prime location in the Trade Centre district, this hotel features a bar, as well as a sauna and a hot tub. The accommodation offers a 24-hour front desk, airport transfers, a kids club and free WiFi throughout the property.', image: 'https://dubaitravelblog.com/wp-content/uploads/2019/10/dubai-city-view-h-hotel.jpg'),
];

class Hotel {
  int id;
  String name;
  String address;
  String rating;
  double price;
  String description;
  bool favorite;
  String image;

  Hotel(
      {required this.id,
      required this.name,
      required this.address,
      required this.rating,
      required this.price,
      required this.description,
      this.favorite = false,
      required this.image});
}


const description = ''' Set in Brasilia and within 5.3 km of Palace of Justice, Royal Tulip Brasília Alvorada features a bar, non-smoking rooms, and free WiFi throughout the property.
This hotel boasts a stunning design, luxurious accommodations and a large pool by the garden. It’s located on the Paranoá Lake shores, in Brasília, just 850 metres from the Palácio da Alvorada.

These spacious air-conditioned rooms at Royal Tulip Brasília Alvorada are tastefully furnished with king size beds, and feature a balcony, cable TV and minibar. Some offer a living room, flat-screen TV and a larger balcony overlooking the lake.

Guests enjoy a rich buffet breakfast at the Royal Tulip Brasília Alvorada hotel, or drink a refreshing beer at the English pub. The Herbs Restaurant serves international and regional cuisines.

This 5-star hotel offers 2 swimming pools and a spa, which offers massage sessions. Guests can relax in the sauna or exercise at the fitness centre.

The Planalto Palace and National Congress are located 6 km away. The nearest airport is Brasilia - Presidente Juscelino Kubitschek International Airport, 13 km from the accommodation.

Couples particularly like the location — they rated it 9.3 for a two-person trip.
company on November 14, 2017 with Register of Joint Stock Companies and Firms (RJSC) in Bangladesh under the Companies Act, 1994.The registered address of the Company is 4 K B Ismail Road, Mymensingh. The Company's Corporate Office is located at UTC Tower (Level 14), 8 Panthapath, Karwan Bazar, Dhaka, 1215.

Distance in property
Sea Pearl Beach Resort & Spa Limited a Five Star Resort & hotel in Bangladesh, started its commercial operation from 17 September 2015. The principal activities of the Company throughout the period were carrying out Resort & Hotel business. The business activities connected with the Resort & 
Hotel business are carried out through a Franchise Agreement between Sea Pearl Beach Resort & Spa Limited (Franchisee") and GT Investments BV (the "Franchisor)", a limited liability company organized under the laws of the Netherlands, having its registered office at Arnhemseweg 2, 387 CH Amersfoot,
 the Netherlands dated June 01, 2014. Franchisor are knowledgeable and experienced in managing and promoting five star hotels and resorts and has (and/or its Affiliates have) performed such services throughout the world.

The Company constructed its Five Star Resort and Hotel Complex on a total land area of 15 acre with ten story building having total floor area of nearly 450,000 sft. The Complex hasoperate 241 number of rooms out of 493 guest rooms, 7 restaurants, 1 bar, 2 conference rooms, 1 hall room, 1 health club, 2 swimming pools, 2 tennis courts, 
vehicle parking place and all other guest facilities associated with a world class resort and hotel. The Company has also installed all necessary equipment such as Air conditioner (HVAC), Lift, Generator, Electric Substation, Sea Water Desalination Plant, Water Treatment Plan (WTP), Sewerage Treatment Plant (STP), 
Fire Detection & Protection System, Kitchen Equipment, Furniture, Laundry, Spa, Gymnasium, Children Park to provide seamless guest services. Furthermore, the Complex is secured by well-constructed boundary wall, internal road and pavement, staff accommodation etc. The Complex has full frontal sea view with unobstructed access to Inani sea beach.

Accordingly, the Property of Sea Pearl Beach Resort & Spa Limited is managed and marketed as "Royal Tulip Sea Pearl" by Louvre Hotels Group who is based in France and a major player in Global Hotel and Resort industry currently managing and franchising more than 1100 hotels in nearly 50 countries throughout the world.''';