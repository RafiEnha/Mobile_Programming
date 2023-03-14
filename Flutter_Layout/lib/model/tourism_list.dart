import 'package:flutter/material.dart';
import 'package:flutter_layout/detail_screen.dart';
import 'package:flutter_layout/model/list_item.dart';
import 'package:flutter_layout/model/tourism_place.dart';

class TourismList extends StatefulWidget{
  final List<TourismPlace> doneTourismPlaceList;

  const TourismList({
    Key? key,
    required this.doneTourismPlaceList
  }) : super(key: key);
  @override
  _TourismListState createState() => _TourismListState(doneTourismPlaceList);
}

class _TourismListState extends State<TourismList>{
  final List<TourismPlace> doneTourismPlaceList;
  final List<TourismPlace> tourismPlaceList = [
    TourismPlace(
      name: 'Surabaya Submarine Monument',
      location: 'Jl Pemuda',
      imageAsset: 'assets/images/submarine.jpg',
      description: 'Museum inside a decommisioned Russian war submarine with tours & an adjacent park with cafes. Clean and well maintained. Car park cost 10k, entrance fee 15k/person. You can see KRI Pasopati there, it is a russian whiskey class. You can also watch the video about the Indonesian Navy at the building beside the submarine.',
      openday: 'Open Everyday',
      openhour: '08.00-16.00',
      price: 'Rp15.000,-',
      album: 'a',
    ),
    TourismPlace(
      name: 'Kelenteng Sanggar Agung',
      location: 'Kenjeran',
      imageAsset: 'assets/images/klenteng.jpg',
      description: 'Klenteng Sanggar Agung juga dikenal dengan sebutan Klenteng Hong San Tang. Didirikan pada tahun 1999 dan berfungsi sebagai tempat ibadah umat Tri Dharma. Kelenteng ini memiliki ciri khas yaitu terdapat patung Dewi Kwan Im setinggi 20 meter dan berada di tepi laut.',
      openday: 'Open Everyday',
      openhour: '07.00-20.00',
      price: 'Rp10.000,-',
      album: 'a',
    ),
    TourismPlace(
      name: 'House of Sampoerna',
      location: 'Krembangan Utara',
      imageAsset: 'assets/images/sampoerna.jpg',
      description: 'a',
      openday: 'a',
      openhour: 'a',
      price: 'a',
      album: 'a',
    ),
    TourismPlace(
      name: 'Tugu Pahlawan',
      location: 'Alun-alun contong',
      imageAsset: 'assets/images/pahlawan.jpg',
      description: 'a',
      openday: 'a',
      openhour: 'a',
      price: 'a',
      album: 'a',
    ),
    TourismPlace(
      name: 'Patung Suro Boyo',
      location: 'Wonokromo',
      imageAsset: 'assets/images/sby.jpg',
      description: 'a',
      openday: 'a',
      openhour: 'a',
      price: 'a',
      album: 'a',
    ),
    TourismPlace(
      name: 'Monumen Jayandaru',
      location: 'Alun-alun Sidoarjo',
      imageAsset: 'assets/images/jayandaru.jpg',
      description: 'a',
      openday: 'a',
      openhour: 'a',
      price: 'a',
      album: 'a',
    ),
    TourismPlace(
      name: 'Museum Angkut',
      location: 'Jl Terusan Sultan Agung',
      imageAsset: 'assets/images/angkut.jpg',
      description: 'a',
      openday: 'a',
      openhour: 'a',
      price: 'a',
      album: 'a',
    ),
    TourismPlace(
      name: 'Kebun Binatang Surabaya',
      location: 'Wonokromo',
      imageAsset: 'assets/images/bonbin.jpg',
      description: 'a',
      openday: 'a',
      openhour: 'a',
      price: 'a',
      album: 'a',
    ),
  ];

  _TourismListState(this.doneTourismPlaceList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemBuilder: (context, index) {
          final TourismPlace place = tourismPlaceList[index];
          return InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: ListItem(
              place: place,
              isDone: doneTourismPlaceList.contains(place),
              onCheckboxClick: (bool? value){
                setState(() {
                  if(value!=null) {
                    value
                        ? doneTourismPlaceList.add(place)
                        : doneTourismPlaceList.remove(place);
                  }
                });
              },
            ),
          );
        },
        itemCount: tourismPlaceList.length,
    );
  }
}