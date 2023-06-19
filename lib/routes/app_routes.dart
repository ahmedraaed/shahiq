import 'package:flutter/material.dart';
import 'package:shahiq/Screens/Auth/CreateAccountTwoScreen.dart';
import 'package:shahiq/Screens/Auth/CreateAnAccountScreen.dart';
import 'package:shahiq/Screens/Auth/SignInScreen.dart';
import 'package:shahiq/Screens/Auth/resetPassword.dart';
import 'package:shahiq/Screens/Settings/AboutUs.dart';
import 'package:shahiq/Screens/Settings/Downloads.dart';
import 'package:shahiq/Screens/Settings/EditMyProfile.dart';
import 'package:shahiq/Screens/Settings/EditReminder.dart';
import 'package:shahiq/Screens/Settings/Favourites.dart';
import 'package:shahiq/Screens/Settings/MyProfile.dart';
import 'package:shahiq/Screens/Settings/NoteDetials.dart';
import 'package:shahiq/Screens/Settings/Notes.dart';
import 'package:shahiq/Screens/Settings/Policy.dart';
import 'package:shahiq/Screens/Settings/QuestionBeforeStart.dart';
import 'package:shahiq/Screens/Settings/Reminder.dart';
import 'package:shahiq/Screens/Settings/SetAlarm.dart';
import 'package:shahiq/Screens/Settings/Settings.dart';
import 'package:shahiq/Screens/Settings/ShahiqPlus.dart';

class AppRoutes {


  //New
  static const String createAccountScreen = 'createAnAccount';
  static const String createAccountTwoScreen = 'createAnTwoAccount';
  static const String logInScreen = 'logInScreen';
  static const String resetPassword = 'resetPassword';
  static const String settings = 'settings';
  static const String myProfile = 'myProfile';
  static const String editMyProfile = 'editMyProfile';
  static const String favourites = 'favourites';
  static const String downloads = 'downloads';
  static const String notes = 'notes';
  static const String noteDetails = 'noteDetails';
  static const String reminder = 'reminder';
  static const String editReminder = 'editReminder';
  static const String policy = 'policy';
  static const String aboutUs = 'aboutUs';
  static const String questionBeforeStart = 'questionBeforeStart';
  static const String setAlarm = 'setAlarm';
  static const String shahiqPlus = 'shahiqPlus';

  static Map<String, WidgetBuilder> routes = {

    //New
    createAccountScreen: (context) => CreateAccountScreen(),
    createAccountTwoScreen: (context) => CreateAccountTwoScreen(),
    logInScreen: (context) => LogInScreen(),
    resetPassword: (context) => ResetPassword(),
    settings: (context) => Settings(),
    myProfile: (context) => MyProfile(),
    editMyProfile: (context) => EditMyProfile(),
    favourites: (context) => Favourite(),
    downloads: (context) => Downloads(),
    notes: (context) => Notes(),
    noteDetails: (context) => NoteDetials(),
    reminder: (context) => Reminder(),
    editReminder: (context) => EditReminder(),
    policy: (context) => Policy(),
    aboutUs: (context) => AboutUs(),
    questionBeforeStart: (context) => QuestionBeforeStart(),
    setAlarm: (context) => SetAlarm(),
    shahiqPlus: (context) => ShahiqPlus(),

  };
}
