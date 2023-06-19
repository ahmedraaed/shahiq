// import 'package:flutter/material.dart';
// import 'package:shahiq/core/app_export.dart';
// import 'package:shahiq/presentation/play_nature_and_music_categories_dialog/play_nature_and_music_categories_dialog.dart';
// import 'package:shahiq/presentation/play_nature_and_music_categories_one_dialog/play_nature_and_music_categories_one_dialog.dart';
// import 'package:shahiq/presentation/play_nature_dialog/play_nature_dialog.dart';
// import 'package:shahiq/presentation/set_reminder_dialog/set_reminder_dialog.dart';
// import 'package:shahiq/presentation/done_dialog/done_dialog.dart';
//
// class AppNavigationScreen extends StatelessWidget {
//   const AppNavigationScreen({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//         child: Scaffold(
//             backgroundColor: ColorConstant.whiteA700,
//             body: SizedBox(
//                 width: getHorizontalSize(375),
//                 child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     children: [
//                       Container(
//                           decoration: AppDecoration.fillWhiteA700,
//                           child: Column(
//                               mainAxisAlignment: MainAxisAlignment.start,
//                               children: [
//                                 Align(
//                                     alignment: Alignment.centerLeft,
//                                     child: Padding(
//                                         padding: getPadding(
//                                             left: 20,
//                                             top: 10,
//                                             right: 20,
//                                             bottom: 10),
//                                         child: Text("App Navigation",
//                                             overflow: TextOverflow.ellipsis,
//                                             textAlign: TextAlign.center,
//                                             style:
//                                                 AppStyle.txtRobotoRegular20))),
//                                 Align(
//                                     alignment: Alignment.centerLeft,
//                                     child: Padding(
//                                         padding: getPadding(left: 20),
//                                         child: Text(
//                                             "Check your app's UI from the below demo screens of your app.",
//                                             overflow: TextOverflow.ellipsis,
//                                             textAlign: TextAlign.center,
//                                             style:
//                                                 AppStyle.txtRobotoRegular16))),
//                                 Padding(
//                                     padding: getPadding(top: 5),
//                                     child: Divider(
//                                         height: getVerticalSize(1),
//                                         thickness: getVerticalSize(1),
//                                         color: ColorConstant.black900))
//                               ])),
//                       Expanded(
//                           child: SingleChildScrollView(
//                               child: Container(
//                                   decoration: AppDecoration.fillWhiteA700,
//                                   child: Column(
//                                       mainAxisAlignment:
//                                           MainAxisAlignment.start,
//                                       children: [
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapSplashScreen(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Splash Screen",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapOnboardingScreenOne(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Onboarding Screen-One",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapTwo(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text("Two",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapThree(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Three",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapCreateanaccount(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Create an account",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapCreateanaccountTwo(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Create an account Two",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapLogin(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Login",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapResetPass(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Reset Pass",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapNotification(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Notification",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapProfileOne(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Profile One",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapMeditation(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Meditation",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapNature(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Nature",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapMusicOne(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Music One",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapPlaylist(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Playlist",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapPlayMeditationSessionsOne(
//                                                   context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Play - Meditation Sessions One",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapAddanote(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Add a note",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapMusic(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Music",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapPlayMusic(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Play - Music ",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapPlayNatureandMusicCategories(
//                                                   context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Play - Nature and Music Categories",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapPlayNatureandMusicCategoriesOne(
//                                                   context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Play - Nature and Music Categories One",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapPlaylistNature(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Playlist- Nature",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapPlayMeditationSessions(
//                                                   context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Play - Meditation Sessions",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapPlayNature(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Play - Nature",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapQuestionbeforeStart(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Question before Start",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapSetReminder(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Set Reminder",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapSetAlarm(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Set Alarm",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapDone(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Done",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapShahiQPlusOne(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "ShahiQ Plus + One",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapShahiQPlus(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "ShahiQ Plus +",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapSettingsContainer(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Settings - Container",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapProfile(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Profile",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapEditProfile(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Edit Profile",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapEditProfileTwo(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Edit Profile - Two",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapFavorites(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Favorites",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapDownloads(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Downloads",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapNotes(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Notes",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapNote(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Note",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapPolicy(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Policy",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapAbouUs(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Abou Us",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapReminder(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Reminder ",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapEditingReminder(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Editing Reminder",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapDownloadsEmptyState(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Downloads- Empty State",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapFavoritesEmptyState(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Favorites - Empty State",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapSearchEmptyState(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Search - Empty State",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ]))),
//                                         GestureDetector(
//                                             onTap: () {
//                                               onTapReminderEmptyState(context);
//                                             },
//                                             child: Container(
//                                                 decoration:
//                                                     AppDecoration.fillWhiteA700,
//                                                 child: Column(
//                                                     mainAxisAlignment:
//                                                         MainAxisAlignment.start,
//                                                     children: [
//                                                       Align(
//                                                           alignment: Alignment
//                                                               .centerLeft,
//                                                           child: Padding(
//                                                               padding:
//                                                                   getPadding(
//                                                                       left: 20,
//                                                                       top: 10,
//                                                                       right: 20,
//                                                                       bottom:
//                                                                           10),
//                                                               child: Text(
//                                                                   "Reminder - Empty State",
//                                                                   overflow:
//                                                                       TextOverflow
//                                                                           .ellipsis,
//                                                                   textAlign:
//                                                                       TextAlign
//                                                                           .center,
//                                                                   style: AppStyle
//                                                                       .txtRobotoRegular20))),
//                                                       Padding(
//                                                           padding: getPadding(
//                                                               top: 5),
//                                                           child: Divider(
//                                                               height:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               thickness:
//                                                                   getVerticalSize(
//                                                                       1),
//                                                               color: ColorConstant
//                                                                   .blueGray400))
//                                                     ])))
//                                       ]))))
//                     ]))));
//   }
//
//   /// Navigates to the splashScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the splashScreen.
//   onTapSplashScreen(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.splashScreen);
//   }
//
//   /// Navigates to the onboardingScreenOneScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the onboardingScreenOneScreen.
//   onTapOnboardingScreenOne(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.onboardingScreenOneScreen);
//   }
//
//   /// Navigates to the twoScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the twoScreen.
//   onTapTwo(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.twoScreen);
//   }
//
//   /// Navigates to the threeScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the threeScreen.
//   onTapThree(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.threeScreen);
//   }
//
//   /// Navigates to the createAnAccountScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the createAnAccountScreen.
//   onTapCreateanaccount(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.createAnAccountScreen);
//   }
//
//   /// Navigates to the createAnAccountTwoScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the createAnAccountTwoScreen.
//   onTapCreateanaccountTwo(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.createAnAccountTwoScreen);
//   }
//
//   /// Navigates to the loginScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the loginScreen.
//   onTapLogin(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.loginScreen);
//   }
//
//   /// Navigates to the resetPassScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the resetPassScreen.
//   onTapResetPass(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.resetPassScreen);
//   }
//
//   /// Navigates to the notificationScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the notificationScreen.
//   onTapNotification(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.notificationScreen);
//   }
//
//   /// Navigates to the profileOneScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the profileOneScreen.
//   onTapProfileOne(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.profileOneScreen);
//   }
//
//   /// Navigates to the meditationScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the meditationScreen.
//   onTapMeditation(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.meditationScreen);
//   }
//
//   /// Navigates to the natureScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the natureScreen.
//   onTapNature(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.natureScreen);
//   }
//
//   /// Navigates to the musicOneScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the musicOneScreen.
//   onTapMusicOne(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.musicOneScreen);
//   }
//
//   /// Navigates to the playlistScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the playlistScreen.
//   onTapPlaylist(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.playlistScreen);
//   }
//
//   /// Navigates to the playMeditationSessionsOneScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the playMeditationSessionsOneScreen.
//   onTapPlayMeditationSessionsOne(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.playMeditationSessionsOneScreen);
//   }
//
//   /// Displays an [AlertDialog] with a custom content widget using the
//   /// provided [BuildContext].
//   ///
//   /// The custom content is created using the [AddANoteDialog]
//   /// method and is displayed in an [AlertDialog] that fills the entire screen
//   /// with no padding.
//   // onTapAddanote(BuildContext context) {
//   //   showDialog(
//   //       context: context,
//   //       builder: (_) => AlertDialog(
//   //             content: AddANoteDialog(),
//   //             backgroundColor: Colors.transparent,
//   //             contentPadding: EdgeInsets.zero,
//   //             insetPadding: const EdgeInsets.only(left: 0),
//   //           ));
//   // }
//
//   /// Navigates to the musicScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the musicScreen.
//   onTapMusic(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.musicScreen);
//   }
//
//   /// Navigates to the playMusicScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the playMusicScreen.
//   onTapPlayMusic(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.playMusicScreen);
//   }
//
//   /// Displays an [AlertDialog] with a custom content widget using the
//   /// provided [BuildContext].
//   ///
//   /// The custom content is created using the [PlayNatureAndMusicCategoriesDialog]
//   /// method and is displayed in an [AlertDialog] that fills the entire screen
//   /// with no padding.
//   onTapPlayNatureandMusicCategories(BuildContext context) {
//     showDialog(
//         context: context,
//         builder: (_) => AlertDialog(
//               content: PlayNatureAndMusicCategoriesDialog(),
//               backgroundColor: Colors.transparent,
//               contentPadding: EdgeInsets.zero,
//               insetPadding: const EdgeInsets.only(left: 0),
//             ));
//   }
//
//   /// Displays an [AlertDialog] with a custom content widget using the
//   /// provided [BuildContext].
//   ///
//   /// The custom content is created using the [PlayNatureAndMusicCategoriesOneDialog]
//   /// method and is displayed in an [AlertDialog] that fills the entire screen
//   /// with no padding.
//   onTapPlayNatureandMusicCategoriesOne(BuildContext context) {
//     showDialog(
//         context: context,
//         builder: (_) => AlertDialog(
//               content: PlayNatureAndMusicCategoriesOneDialog(),
//               backgroundColor: Colors.transparent,
//               contentPadding: EdgeInsets.zero,
//               insetPadding: const EdgeInsets.only(left: 0),
//             ));
//   }
//
//   /// Navigates to the playlistNatureScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the playlistNatureScreen.
//   onTapPlaylistNature(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.playlistNatureScreen);
//   }
//
//   /// Navigates to the playMeditationSessionsScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the playMeditationSessionsScreen.
//   onTapPlayMeditationSessions(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.playMeditationSessionsScreen);
//   }
//
//   /// Displays an [AlertDialog] with a custom content widget using the
//   /// provided [BuildContext].
//   ///
//   /// The custom content is created using the [PlayNatureDialog]
//   /// method and is displayed in an [AlertDialog] that fills the entire screen
//   /// with no padding.
//   onTapPlayNature(BuildContext context) {
//     showDialog(
//         context: context,
//         builder: (_) => AlertDialog(
//               content: PlayNatureDialog(),
//               backgroundColor: Colors.transparent,
//               contentPadding: EdgeInsets.zero,
//               insetPadding: const EdgeInsets.only(left: 0),
//             ));
//   }
//
//   /// Navigates to the questionBeforeStartScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the questionBeforeStartScreen.
//   onTapQuestionbeforeStart(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.questionBeforeStartScreen);
//   }
//
//   /// Displays an [AlertDialog] with a custom content widget using the
//   /// provided [BuildContext].
//   ///
//   /// The custom content is created using the [SetReminderDialog]
//   /// method and is displayed in an [AlertDialog] that fills the entire screen
//   /// with no padding.
//   onTapSetReminder(BuildContext context) {
//     showDialog(
//         context: context,
//         builder: (_) => AlertDialog(
//               content: SetReminderDialog(),
//               backgroundColor: Colors.transparent,
//               contentPadding: EdgeInsets.zero,
//               insetPadding: const EdgeInsets.only(left: 0),
//             ));
//   }
//
//   /// Navigates to the setAlarmScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the setAlarmScreen.
//   onTapSetAlarm(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.setAlarmScreen);
//   }
//
//   /// Displays an [AlertDialog] with a custom content widget using the
//   /// provided [BuildContext].
//   ///
//   /// The custom content is created using the [DoneDialog]
//   /// method and is displayed in an [AlertDialog] that fills the entire screen
//   /// with no padding.
//   onTapDone(BuildContext context) {
//     showDialog(
//         context: context,
//         builder: (_) => AlertDialog(
//               content: DoneDialog(),
//               backgroundColor: Colors.transparent,
//               contentPadding: EdgeInsets.zero,
//               insetPadding: const EdgeInsets.only(left: 0),
//             ));
//   }
//
//   /// Navigates to the shahiqPlusOneScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the shahiqPlusOneScreen.
//   onTapShahiQPlusOne(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.shahiqPlusOneScreen);
//   }
//
//   /// Navigates to the shahiqPlusScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the shahiqPlusScreen.
//   onTapShahiQPlus(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.shahiqPlusScreen);
//   }
//
//   /// Navigates to the settingsContainerScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the settingsContainerScreen.
//   onTapSettingsContainer(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.settingsContainerScreen);
//   }
//
//   /// Navigates to the profileScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the profileScreen.
//   onTapProfile(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.profileScreen);
//   }
//
//   /// Navigates to the editProfileScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the editProfileScreen.
//   onTapEditProfile(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.editProfileScreen);
//   }
//
//   /// Navigates to the editProfileTwoScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the editProfileTwoScreen.
//   onTapEditProfileTwo(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.editProfileTwoScreen);
//   }
//
//   /// Navigates to the favoritesScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the favoritesScreen.
//   onTapFavorites(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.favoritesScreen);
//   }
//
//   /// Navigates to the downloadsScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the downloadsScreen.
//   onTapDownloads(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.downloadsScreen);
//   }
//
//   /// Navigates to the notesScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the notesScreen.
//   onTapNotes(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.notesScreen);
//   }
//
//   /// Navigates to the noteScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the noteScreen.
//   onTapNote(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.noteScreen);
//   }
//
//   /// Navigates to the policyScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the policyScreen.
//   onTapPolicy(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.policyScreen);
//   }
//
//   /// Navigates to the abouUsScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the abouUsScreen.
//   onTapAbouUs(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.abouUsScreen);
//   }
//
//   /// Navigates to the reminderScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the reminderScreen.
//   onTapReminder(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.reminderScreen);
//   }
//
//   /// Navigates to the editingReminderScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the editingReminderScreen.
//   onTapEditingReminder(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.editingReminderScreen);
//   }
//
//   /// Navigates to the downloadsEmptyStateScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the downloadsEmptyStateScreen.
//   onTapDownloadsEmptyState(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.downloadsEmptyStateScreen);
//   }
//
//   /// Navigates to the favoritesEmptyStateScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the favoritesEmptyStateScreen.
//   onTapFavoritesEmptyState(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.favoritesEmptyStateScreen);
//   }
//
//   /// Navigates to the searchEmptyStateScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the searchEmptyStateScreen.
//   onTapSearchEmptyState(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.searchEmptyStateScreen);
//   }
//
//   /// Navigates to the reminderEmptyStateScreen when the action is triggered.
//   ///
//   /// The [BuildContext] parameter is used to build the navigation stack.
//   /// When the action is triggered, this function uses the `Navigator` widget
//   /// to push the named route for the reminderEmptyStateScreen.
//   onTapReminderEmptyState(BuildContext context) {
//     Navigator.pushNamed(context, AppRoutes.reminderEmptyStateScreen);
//   }
// }
