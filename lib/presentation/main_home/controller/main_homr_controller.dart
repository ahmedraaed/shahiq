
import 'package:flutter/material.dart';
import 'package:shahiq/presentation/Settings/Settings.dart';
import 'package:shahiq/presentation/explore_page/explore_page.dart';
import 'package:shahiq/presentation/home_page/home_page.dart';

import '../../Settings/ShahiqPlus.dart';



class MainHomeController extends ChangeNotifier{



  int pageNumber=0;

  List<Widget> body=[
    HomePage(),
    ExplorePage(),
    ShahiqPlus(),
    Settings(),
    // EducationalScreen(),
    // SettingScreen(),
  ];

  changePage(int number){
    pageNumber=number;
    notifyListeners();
  }





}