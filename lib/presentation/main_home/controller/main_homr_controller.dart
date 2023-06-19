
import 'package:flutter/material.dart';
import 'package:shahiq/presentation/explore_page/explore_page.dart';
import 'package:shahiq/presentation/home_page/home_page.dart';



class MainHomeController extends ChangeNotifier{



  int pageNumber=0;

  List<Widget> body=[
    HomePage(),
    ExplorePage(),
    ExplorePage(),
    ExplorePage(),
    // EducationalScreen(),
    // SettingScreen(),
  ];

  changePage(int number){
    pageNumber=number;
    notifyListeners();
  }





}