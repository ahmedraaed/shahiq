import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shahiq/core/app_export.dart';
import 'package:shahiq/widgets/custom_button.dart';
import 'package:shahiq/presentation/play_nature_dialog/play_nature_dialog.dart';

import '../../widgets/app_bar/custom_app_bar.dart';

class PlayNaturalSessionsScreen extends StatelessWidget {
  const PlayNaturalSessionsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
          appBar: CustomAppBar(
            height: 60.h,
            leadingWidth: 30.w,
            actions: [
              Padding(
                padding: EdgeInsetsDirectional.only(end: 20.w),
                child: CustomImageView(
                    svgPath: ImageConstant.imgArrowleftGray50,
                    height: getVerticalSize(18),
                    width: getHorizontalSize(10),
                    onTap: () {
                      onTapImgArrowleft(context);
                    }),
              ),

            ],
          ),

          extendBody: true,
          extendBodyBehindAppBar: true,
          body: Container(
              width: size.width,
              height: size.height,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment(-1.09, -0.37),
                      end: Alignment(1.25, 1.27),
                      colors: [
                        ColorConstant.cyan700,
                        ColorConstant.gray900
                      ])),
              child: Container(
                  width: double.maxFinite,
                  padding:
                  getPadding(left: 20, top: 32, right: 20, bottom: 32),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgRectangle6263,
                            height: getSize(388),
                            width: getSize(388),
                            radius:
                            BorderRadius.circular(getHorizontalSize(14)),
                            margin: getMargin(top: 56)),
                        Padding(
                            padding: getPadding( top: 35),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        Text("الاسترخاء التام",
                                            overflow: TextOverflow.ellipsis,
                                            style: AppStyle
                                                .txtJannaLTBold24WhiteA700),
                                        Text("السلام النفسي",
                                            overflow: TextOverflow.ellipsis,
                                            style: AppStyle
                                                .txtJannaLTRegular16WhiteA700)
                                      ]),
                                  Spacer(),
                                  CustomImageView(
                                      svgPath:
                                      ImageConstant.imgClockWhiteA700,
                                      height: getSize(24),
                                      width: getSize(24),
                                      margin: getMargin(top: 29, bottom: 21)),
                                  SizedBox(width: 5.w,),

                                  CustomImageView(
                                      svgPath: ImageConstant.imgUpload,
                                      height: getSize(24),
                                      width: getSize(24),
                                      margin: getMargin(top: 29, bottom: 21)),
                                ])),
                        CustomImageView(
                            svgPath: ImageConstant.imgGroup1170,
                            height: getVerticalSize(12),
                            width: getHorizontalSize(385),
                            margin: getMargin( top: 28)),
                        Padding(
                            padding: getPadding(top: 8),
                            child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("3:53",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.right,
                                      style: AppStyle
                                          .txtJannaLTRegular12Gray5002),
                                  Text("-6:25 ",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtJannaLTRegular12Gray5002),
                                ])),
                        Padding(
                            padding: getPadding(left: 37, top: 32, right: 32),
                            child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomImageView(
                                      svgPath:
                                      ImageConstant.imgVolumeWhiteA700,
                                      height: getSize(19),
                                      width: getSize(19),
                                      margin: getMargin(top: 17, bottom: 14)),
                                  Icon(Icons.skip_next,color: Colors.white,weight: 12.w,size: 25.sp),

                                  Container(
                                      padding: getPadding(
                                          left: 19,
                                          top: 15,
                                          right: 19,
                                          bottom: 15),
                                      decoration: AppDecoration
                                          .outlineBlack9000f1
                                          .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .circleBorder24),
                                      child: Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.center,
                                          children: [
                                            Container(
                                                height: getVerticalSize(20),
                                                width: getHorizontalSize(4),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .indigo800,
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            2)))),
                                            SizedBox(width: 2.w,),
                                            Container(
                                                height: getVerticalSize(20),
                                                width: getHorizontalSize(4),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .indigo800,
                                                    borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(
                                                            2)))),
                                          ])),
                                  Icon(Icons.skip_previous,color: Colors.white,weight: 12.w,size: 25.sp),


                                  CustomImageView(
                                      svgPath: ImageConstant.imgVolume,
                                      height: getSize(19),
                                      width: getSize(19),
                                      margin: getMargin(top: 17, bottom: 14)),
                                ])),
                        SizedBox(height: 20.h,),
                        CustomButton(
                            height: getVerticalSize(42),
                            width: getHorizontalSize(143),
                            text: "دون افكارك",
                            margin: getMargin(left: 142, right: 143, bottom: 38),
                            variant: ButtonVariant.FillWhiteA70033,
                            padding: ButtonPadding.PaddingT7,
                            fontStyle: ButtonFontStyle.JannaLTRegular14WhiteA700,
                            suffixWidget: Container(
                                margin: getMargin(left: 8),
                                child: CustomImageView(svgPath: ImageConstant.imgForward)),
                            onTap: () {
                              onTaptf(context);
                            }),

                      ]))),
        )
    );
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  /// Displays an [AlertDialog] with a custom content widget using the
  /// provided [BuildContext].
  ///
  /// The custom content is created using the [PlayNatureDialog]
  /// method and is displayed in an [AlertDialog] that fills the entire screen
  /// with no padding.
  onTaptf(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: PlayNatureDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
