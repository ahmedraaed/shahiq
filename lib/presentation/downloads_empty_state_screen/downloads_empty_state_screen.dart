import 'package:flutter/material.dart';
import 'package:shahiq/core/app_export.dart';
import 'package:shahiq/widgets/app_bar/appbar_image.dart';
import 'package:shahiq/widgets/app_bar/appbar_title.dart';
import 'package:shahiq/widgets/app_bar/custom_app_bar.dart';

class DownloadsEmptyStateScreen extends StatelessWidget {
  const DownloadsEmptyStateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(81),
                leadingWidth: 30,
                leading: AppbarImage(
                    height: getVerticalSize(16),
                    width: getHorizontalSize(10),
                    svgPath: ImageConstant.imgArrowleftBlueGray90018x10,
                    margin: getMargin(left: 20, top: 1, bottom: 38),
                    onTap: () {
                      onTapArrowleft15(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "التنزيلات")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 201),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: getVerticalSize(139),
                          width: getHorizontalSize(140),
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                    alignment: Alignment.center,
                                    child: GestureDetector(
                                        onTap: () {
                                          onTapEllipseseventyf(context);
                                        },
                                        child: Container(
                                            height: getVerticalSize(139),
                                            width: getHorizontalSize(140),
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        getHorizontalSize(70)),
                                                gradient: LinearGradient(
                                                    begin: Alignment(0.5, 0),
                                                    end: Alignment(0.5, 1),
                                                    colors: [
                                                      ColorConstant.cyan600,
                                                      ColorConstant.whiteA70066
                                                    ]))))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgGroup1224,
                                    height: getVerticalSize(115),
                                    width: getHorizontalSize(123),
                                    alignment: Alignment.bottomRight),
                                CustomImageView(
                                    svgPath: ImageConstant.imgVector,
                                    height: getVerticalSize(33),
                                    width: getHorizontalSize(41),
                                    alignment: Alignment.topRight),
                                Align(
                                    alignment: Alignment.topCenter,
                                    child: Container(
                                        margin: getMargin(left: 31, right: 29),
                                        padding:
                                            getPadding(left: 10, right: 10),
                                        decoration: AppDecoration.fillWhiteA700
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder9),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                  height: getVerticalSize(75),
                                                  width: getHorizontalSize(56),
                                                  margin: getMargin(bottom: 24),
                                                  decoration: BoxDecoration(
                                                      color: ColorConstant
                                                          .lightBlue50,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  7)),
                                                      boxShadow: [
                                                        BoxShadow(
                                                            color: ColorConstant
                                                                .indigo80014,
                                                            spreadRadius:
                                                                getHorizontalSize(
                                                                    2),
                                                            blurRadius:
                                                                getHorizontalSize(
                                                                    2),
                                                            offset: Offset(
                                                                1.44, 7.19))
                                                      ]))
                                            ]))),
                                Align(
                                    alignment: Alignment.bottomLeft,
                                    child: Container(
                                        height: getVerticalSize(57),
                                        width: getHorizontalSize(52),
                                        margin: getMargin(bottom: 1),
                                        decoration: BoxDecoration(
                                            color: ColorConstant.red100,
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(28))))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowdownCyan600,
                                    height: getSize(45),
                                    width: getSize(45),
                                    alignment: Alignment.topCenter,
                                    margin: getMargin(top: 36)),
                                CustomImageView(
                                    svgPath: ImageConstant.imgGroup1028,
                                    height: getVerticalSize(127),
                                    width: getHorizontalSize(139),
                                    alignment: Alignment.topCenter)
                              ])),
                      Container(
                          width: getHorizontalSize(268),
                          margin: getMargin(top: 27),
                          child: Text("لم تقم بتنزيل اي محتوي حتي الان",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtJannaLTBold20)),
                      Container(
                          width: getHorizontalSize(191),
                          margin: getMargin(top: 3, bottom: 5),
                          child: Text(
                              "قم بالضغط علي زرار التنزيل بجوار اي جلسة او اي محتوي موسيقي",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtJannaLTRegular14Bluegray200))
                    ]))));
  }

  /// Navigates to the favoritesScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the favoritesScreen.
  onTapEllipseseventyf(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.favoritesScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft15(BuildContext context) {
    Navigator.pop(context);
  }
}
