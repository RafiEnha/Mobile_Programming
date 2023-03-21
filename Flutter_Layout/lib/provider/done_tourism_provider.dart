import 'package:flutter/foundation.dart';
import 'package:flutter_layout/model/tourism_place.dart';

class DoneTourismProvider extends ChangeNotifier{
  final List<TourismPlace> _doneTourismPlaceList = [];

  List<TourismPlace> get doneTourismPlaceList => _doneTourismPlaceList;

  void complete(TourismPlace place, bool isDone){
    isDone
       ? _doneTourismPlaceList.add(place)
       : _doneTourismPlaceList.remove(place);
    notifyListeners();
  }
}