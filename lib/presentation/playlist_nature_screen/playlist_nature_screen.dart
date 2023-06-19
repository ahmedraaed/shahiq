import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../playlist_nature_screen/widgets/playlistnature_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:shahiq/core/app_export.dart';
import 'package:shahiq/widgets/custom_floating_button.dart';

class PlaylistNatureScreen extends StatelessWidget {
  const PlaylistNatureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          backgroundColor: ColorConstant.gray50,
          body: SizedBox(
              width: double.maxFinite,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        height: getVerticalSize(399),
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.center, children: [
                        CustomImageView(
                        imagePath: ImageConstant.imgPhoto3,
                        height: getVerticalSize(399),
                        width: getHorizontalSize(428),
                        radius: BorderRadius.only(
                        bottomLeft:
                        Radius.circular(getHorizontalSize(40))),
                        alignment: Alignment.center),
                          Container(
                            padding: getPadding(
                                left: 20,
                                top: 30,
                                right: 20,
                                bottom: 30),
                            decoration: AppDecoration
                                .gradientBlack90000Black900b3
                                .copyWith(
                                borderRadius: BorderRadiusStyle
                                    .customBorderBL40),),
                          PositionedDirectional(
                            end: 20.w,
                            top: 20.h,
                            child: CustomImageView(
                                svgPath: ImageConstant
                                    .imgArrowleftGray50,
                                height: getVerticalSize(18),
                                width: getHorizontalSize(10),
                                alignment: Alignment.centerLeft,
                                margin: getMargin(top: 2),
                                onTap: () {
                                  onTapImgArrowleft(context);
                                }),
                          ),

                          PositionedDirectional(
                            start: 30.w,
                            bottom: 50.h,
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment:
                                CrossAxisAlignment.start,
                                mainAxisAlignment:
                                MainAxisAlignment.center,
                                children: [
                                  Text("السلام النفسي",
                                      overflow:
                                      TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtJannaLTBold24Gray50),
                                  SizedBox(height: 10.h,),
                                  Row(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            width:
                                            getHorizontalSize(
                                                92),
                                            margin:
                                            getMargin(left: 8),
                                            padding: getPadding(
                                                left: 17,
                                                right: 17),
                                            decoration: AppDecoration
                                                .txtFillWhiteA700
                                                .copyWith(
                                                borderRadius:
                                                BorderRadiusStyle
                                                    .txtCircleBorder12),
                                            child: Text("20 دقيقة",
                                                overflow:
                                                TextOverflow
                                                    .ellipsis,
                                                style: AppStyle
                                                    .txtJannaLTRegular14Black900
                                                    .copyWith(
                                                    letterSpacing:
                                                    getHorizontalSize(
                                                        0.5)))),

                                        Container(
                                            width:
                                            getHorizontalSize(
                                                91),
                                            padding: getPadding(
                                                left: 18,
                                                right: 18),
                                            decoration: AppDecoration
                                                .txtFillWhiteA7004c
                                                .copyWith(
                                                borderRadius:
                                                BorderRadiusStyle
                                                    .txtCircleBorder12),
                                            child: Text("37 جلسة",
                                                overflow:
                                                TextOverflow
                                                    .ellipsis,
                                                style: AppStyle
                                                    .txtJannaLTRegular14WhiteA700
                                                    .copyWith(
                                                    letterSpacing:
                                                    getHorizontalSize(
                                                        0.5)))),
                                      ])
                                ]),
                          )
                        ])),
                    SizedBox(height: 20.h,),
                    Padding(
                        padding:EdgeInsetsDirectional.only(start: 20.w,end: 20.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("الاصوات",
                                overflow: TextOverflow.ellipsis,
                                style: AppStyle.txtJannaLTBold20),
                            Text("تشغيل الكل",
                                overflow: TextOverflow.ellipsis,
                                style: AppStyle.txtJannaLTRegular14Indigo90001),
                          ],
                        )),
                    Expanded(
                      child: Padding(
                        padding: getPadding(left: 20, top: 21, right: 20),
                        child: ListView.separated(
                            separatorBuilder: (context, index) {
                              return SizedBox(height: getVerticalSize(14));
                            },
                            itemCount: 9,
                            itemBuilder: (context, index) {
                              return
                              PlaylistnatureItemWidget(
                              onTapRowclock: () {
                              onTapRowclock(context);
                              });
                            }),
                      ),
                    )
                  ])),
        ));
  }

  // CustomImageView(
  // imagePath: ImageConstant.imgPhoto3,
  // height: getVerticalSize(399),
  // width: getHorizontalSize(428),
  // radius: BorderRadius.only(
  // bottomLeft:
  // Radius.circular(getHorizontalSize(40))),
  // alignment: Alignment.center),
  // PlaylistnatureItemWidget(
  // onTapRowclock: () {
  // onTapRowclock(context);
  // })

  /// Navigates to the playMeditationSessionsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the playMeditationSessionsScreen.
  onTapRowclock(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.playMeditationSessionsScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the playMusicScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the playMusicScreen.
  onTapTxtOnehundredten(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.playMusicScreen);
  }

  /// Navigates to the playMeditationSessionsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the playMeditationSessionsScreen.
  onTapRowlock(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.playMeditationSessionsScreen);
  }
}
