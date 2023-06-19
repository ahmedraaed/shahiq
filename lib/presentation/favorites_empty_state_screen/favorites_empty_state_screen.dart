import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:shahiq/core/app_export.dart';
import 'package:shahiq/widgets/app_bar/appbar_image.dart';
import 'package:shahiq/widgets/app_bar/appbar_title.dart';
import 'package:shahiq/widgets/app_bar/custom_app_bar.dart';
import 'package:shahiq/widgets/custom_icon_button.dart';

class FavoritesEmptyStateScreen extends StatelessWidget {
  const FavoritesEmptyStateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(80),
                leadingWidth: 30,
                leading: AppbarImage(
                    height: getVerticalSize(16),
                    width: getHorizontalSize(10),
                    svgPath: ImageConstant.imgArrowleftBlueGray90018x10,
                    margin: getMargin(left: 20, top: 2, bottom: 37),
                    onTap: () {
                      onTapArrowleft16(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "المفضلات")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 54, top: 206, right: 54),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: getSize(140),
                          width: getSize(140),
                          child: Stack(alignment: Alignment.center, children: [
                            Align(
                                alignment: Alignment.center,
                                child: GestureDetector(
                                    onTap: () {
                                      onTapEllipseseventyf(context);
                                    },
                                    child: Container(
                                        height: getSize(140),
                                        width: getSize(140),
                                        decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(
                                                getHorizontalSize(70)),
                                            gradient: LinearGradient(
                                                begin: Alignment(0.5, 0),
                                                end: Alignment(0.5, 1),
                                                colors: [
                                                  ColorConstant.cyan600,
                                                  ColorConstant.whiteA70066
                                                ]))))),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    padding: getPadding(top: 2, bottom: 2),
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: fs.Svg(
                                                ImageConstant.imgGroup88),
                                            fit: BoxFit.cover)),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Container(
                                              height: getVerticalSize(124),
                                              width: getHorizontalSize(139),
                                              margin: getMargin(bottom: 9),
                                              padding: getPadding(
                                                  left: 41,
                                                  top: 25,
                                                  right: 41,
                                                  bottom: 25),
                                              decoration: BoxDecoration(
                                                  image: DecorationImage(
                                                      image: fs.Svg(
                                                          ImageConstant
                                                              .imgGroup89),
                                                      fit: BoxFit.cover)),
                                              child: Stack(children: [
                                                CustomIconButton(
                                                    height: 56,
                                                    width: 56,
                                                    variant: IconButtonVariant
                                                        .FillCyan600,
                                                    shape: IconButtonShape
                                                        .CircleBorder28,
                                                    padding: IconButtonPadding
                                                        .PaddingAll12,
                                                    alignment:
                                                        Alignment.bottomCenter,
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgVuesaxlinearheart))
                                              ]))
                                        ])))
                          ])),
                      Container(
                          width: getHorizontalSize(317),
                          margin: getMargin(top: 27),
                          child: Text("لم تقم باضافة اي محتوي الي المفضلات",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtJannaLTBold20)),
                      Container(
                          width: getHorizontalSize(202),
                          margin: getMargin(top: 7, bottom: 5),
                          child: Text(
                              "قم بالضغط علي زرار المفضلة بجوار اي جلسة او اي محتوي موسيقي",
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
  onTapArrowleft16(BuildContext context) {
    Navigator.pop(context);
  }
}
