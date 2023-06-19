import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shahiq/core/app_export.dart';

import '../../widgets/app_bar/custom_app_bar.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
              height: 60.h,
              centerTitle: true,
              title: Text("استكشف",
                  overflow: TextOverflow.ellipsis,
                  style: AppStyle.txtJannaLTBold24),
            ),
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillGray50,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.meditationScreen);
                        },
                        child: SizedBox(
                            height: getVerticalSize(155),
                            width: getHorizontalSize(388),
                            child: Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  height: getVerticalSize(155),
                                  width: getHorizontalSize(388),
                                  imagePath:
                                  ImageConstant.imgRectangle37,
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(14)),
                                  alignment: Alignment.center),

                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(155),
                                      width: getHorizontalSize(388),
                                      decoration: AppDecoration
                                          .fillIndigoA20099
                                          .copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle
                                                      .roundedBorder14),
                                      child: Center(
                                        child: Text("التأمل",
                                            overflow: TextOverflow
                                                .ellipsis,
                                            style: AppStyle
                                                .txtJannaLTBold20WhiteA700),
                                      ))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgGroup13559,
                                  height: getVerticalSize(209),
                                  width: getHorizontalSize(428),
                                  alignment: Alignment.center)
                            ])),
                      ),
                      SizedBox(height: 15.h,),
                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.musicScreen);
                        },
                        child: SizedBox(
                            height: getVerticalSize(155),
                            width: getHorizontalSize(388),
                            child: Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  height: getVerticalSize(155),
                                  width: getHorizontalSize(388),
                                  imagePath:
                                  ImageConstant.imgRectangle37,
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(14)),
                                  alignment: Alignment.center),

                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(155),
                                      width: getHorizontalSize(388),
                                      decoration: AppDecoration
                                          .fillIndigoA20099
                                          .copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle
                                                      .roundedBorder14),
                                      child: Center(
                                        child: Text("الموسيقى",
                                            overflow: TextOverflow
                                                .ellipsis,
                                            style: AppStyle
                                                .txtJannaLTBold20WhiteA700),
                                      ))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgGroup13559,
                                  height: getVerticalSize(209),
                                  width: getHorizontalSize(428),
                                  alignment: Alignment.center)
                            ])),
                      ),
                      SizedBox(height: 15.h,),

                      InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, AppRoutes.natureScreen);
                        },
                        child: SizedBox(
                            height: getVerticalSize(155),
                            width: getHorizontalSize(388),
                            child: Stack(alignment: Alignment.center, children: [
                              CustomImageView(
                                  height: getVerticalSize(155),
                                  width: getHorizontalSize(388),
                                  imagePath:
                                  ImageConstant.imgRectangle37,
                                  radius: BorderRadius.circular(
                                      getHorizontalSize(14)),
                                  alignment: Alignment.center),

                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                      height: getVerticalSize(155),
                                      width: getHorizontalSize(388),
                                      decoration: AppDecoration
                                          .fillIndigoA20099
                                          .copyWith(
                                              borderRadius:
                                                  BorderRadiusStyle
                                                      .roundedBorder14),
                                      child: Center(
                                        child: Text("الطبيعة",
                                            overflow: TextOverflow
                                                .ellipsis,
                                            style: AppStyle
                                                .txtJannaLTBold20WhiteA700),
                                      ))),
                              CustomImageView(
                                  imagePath: ImageConstant.imgGroup13559,
                                  height: getVerticalSize(209),
                                  width: getHorizontalSize(428),
                                  alignment: Alignment.center)
                            ])),
                      ),
                    ],
                  ),
                ))));
  }

  /// Navigates to the musicOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the musicOneScreen.
  onTapImgGroup13560(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.musicOneScreen);
  }
}
