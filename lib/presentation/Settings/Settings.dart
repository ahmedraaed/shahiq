import 'package:flutter/material.dart';
import 'package:shahiq/core/app_export.dart';
import 'package:shahiq/widgets/custom_bottom_bar.dart';
import 'package:shahiq/widgets/custom_icon_button.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 50, bottom: 50),
                decoration: AppDecoration.fillGray50,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: getPadding(left: 20, right: 20),
                                  child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text("المزيد",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtJannaLTBold24),
                                        Container(
                                            width: getHorizontalSize(388),
                                            margin: getMargin(top: 45),
                                            padding: getPadding(left: 14, top: 12, right: 14, bottom: 12),
                                            decoration: AppDecoration.txtFillBluegray50.copyWith(borderRadius: BorderRadiusStyle.txtCustomBorderTL14),
                                            child: Text("الاعدادات الشخصية",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.right,
                                                style: AppStyle.txtJannaLTBold16Bluegray900)),
                                        SizedBox(
                                            width: double.maxFinite,
                                            child: Container(
                                                padding: getPadding(all: 14),
                                                decoration: AppDecoration.fillWhiteA700.copyWith(
                                                    borderRadius: BorderRadiusStyle.customBorderBL14),
                                                child: Column(
                                                    mainAxisSize: MainAxisSize.min,
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      //الملف الشخصى
                                                      Row(
                                                          mainAxisAlignment: MainAxisAlignment.center,
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          children: [
                                                            Card(
                                                                clipBehavior: Clip.antiAlias,
                                                                elevation: 0,
                                                                margin:
                                                                getMargin(left: 14, bottom: 2),
                                                                color: ColorConstant.cyan400,
                                                                shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.circleBorder4),
                                                                child:
                                                                Container(
                                                                    height: getSize(28),
                                                                    width: getSize(28),
                                                                    padding: getPadding(all: 4),
                                                                    decoration: AppDecoration.fillCyan400.copyWith(borderRadius: BorderRadiusStyle.circleBorder4),
                                                                    child: Stack(children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant.imgUserWhiteA700,
                                                                          height: getSize(19),
                                                                          width: getSize(19),
                                                                          alignment: Alignment.center)
                                                                    ]))),
                                                            Padding(
                                                                padding:
                                                                getPadding(top: 3),
                                                                child: Text(
                                                                    "الملف الشخصي",
                                                                    overflow: TextOverflow.ellipsis,
                                                                    textAlign:
                                                                    TextAlign.left,
                                                                    style: AppStyle.txtJannaLTBold14Bluegray900)),
                                                            Spacer(),
                                                            CustomImageView(
                                                                svgPath: ImageConstant.imgArrowleftBlueGray900,
                                                                height: getVerticalSize(12),
                                                                width: getHorizontalSize(7),
                                                                margin: getMargin(top: 9, bottom: 9)),

                                                          ]),
                                                      Padding(
                                                          padding: getPadding(top: 11),
                                                          child: Divider(
                                                              height: getVerticalSize(1),
                                                              thickness: getVerticalSize(1),
                                                              color: ColorConstant.gray300)),
                                                      //المفضلة
                                                      Padding(
                                                        padding: getPadding(top: 11),
                                                        child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Container(
                                                                  height: getSize(28),
                                                                  width: getSize(28),
                                                                  margin: getMargin(left: 14),
                                                                  child: Stack(
                                                                      alignment:
                                                                      Alignment.center,
                                                                      children: [
                                                                        CustomImageView(
                                                                            svgPath: ImageConstant.imgUserDeepOrangeA100,
                                                                            height: getSize(28),
                                                                            width: getSize(28),
                                                                            alignment: Alignment.center),
                                                                        CustomImageView(
                                                                            svgPath: ImageConstant.imgVolumeWhiteA70019x19,
                                                                            height: getSize(19),
                                                                            width: getSize(19),
                                                                            alignment: Alignment.center)
                                                                      ])),
                                                              Padding(
                                                                  padding:
                                                                  getPadding(top: 3),
                                                                  child: Text(
                                                                      "المفضلة",
                                                                      overflow: TextOverflow.ellipsis,
                                                                      textAlign:
                                                                      TextAlign.left,
                                                                      style: AppStyle.txtJannaLTBold14Bluegray900)),
                                                              Spacer(),
                                                              CustomImageView(
                                                                  svgPath: ImageConstant.imgArrowleftBlueGray900,
                                                                  height: getVerticalSize(12),
                                                                  width: getHorizontalSize(7),
                                                                  margin: getMargin(top: 9, bottom: 9)),

                                                            ]),
                                                      ),
                                                      Padding(
                                                          padding: getPadding(top: 11),
                                                          child: Divider(
                                                              height: getVerticalSize(1),
                                                              thickness: getVerticalSize(1),
                                                              color: ColorConstant.gray300)),
                                                      //التنزيلات
                                                      Padding(
                                                        padding: getPadding(top: 11),
                                                        child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Container(
                                                                  height: getSize(28),
                                                                  width: getSize(28),
                                                                  margin: getMargin(left: 14),
                                                                  child: Stack(
                                                                      alignment:
                                                                      Alignment.center,
                                                                      children: [
                                                                        CustomImageView(
                                                                            svgPath: ImageConstant.imgUserDeepOrangeA100,
                                                                            height: getSize(28),
                                                                            width: getSize(28),
                                                                            alignment: Alignment.center),
                                                                        CustomImageView(
                                                                            svgPath: ImageConstant.imgVolumeWhiteA70019x19,
                                                                            height: getSize(19),
                                                                            width: getSize(19),
                                                                            alignment: Alignment.center)
                                                                      ])),
                                                              Padding(
                                                                  padding:
                                                                  getPadding(top: 3),
                                                                  child: Text(
                                                                      "التنزيلات",
                                                                      overflow: TextOverflow.ellipsis,
                                                                      textAlign:
                                                                      TextAlign.left,
                                                                      style: AppStyle.txtJannaLTBold14Bluegray900)),
                                                              Spacer(),
                                                              CustomImageView(
                                                                  svgPath: ImageConstant.imgArrowleftBlueGray900,
                                                                  height: getVerticalSize(12),
                                                                  width: getHorizontalSize(7),
                                                                  margin: getMargin(top: 9, bottom: 9)),

                                                            ]),
                                                      ),
                                                      Padding(
                                                          padding: getPadding(top: 11),
                                                          child: Divider(
                                                              height: getVerticalSize(1),
                                                              thickness: getVerticalSize(1),
                                                              color: ColorConstant.gray300)),
                                                      //تدويناتك
                                                      Padding(
                                                        padding: getPadding(top: 11),
                                                        child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Card(
                                                                  clipBehavior: Clip.antiAlias,
                                                                  elevation: 0,
                                                                  margin:
                                                                  getMargin(left: 14, bottom: 2),
                                                                  color: ColorConstant.cyan400,
                                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.circleBorder4),
                                                                  child:
                                                                  Container(
                                                                      height: getSize(28),
                                                                      width: getSize(28),
                                                                      padding: getPadding(all: 4),
                                                                      decoration: AppDecoration.fillCyan400.copyWith(borderRadius: BorderRadiusStyle.circleBorder4),
                                                                      child: Stack(children: [
                                                                        CustomImageView(
                                                                            svgPath: ImageConstant.imgUserWhiteA700,
                                                                            height: getSize(19),
                                                                            width: getSize(19),
                                                                            alignment: Alignment.center)
                                                                      ]))),
                                                              Padding(
                                                                  padding:
                                                                  getPadding(top: 3),
                                                                  child: Text(
                                                                      "تدويناتك",
                                                                      overflow: TextOverflow.ellipsis,
                                                                      textAlign:
                                                                      TextAlign.left,
                                                                      style: AppStyle.txtJannaLTBold14Bluegray900)),
                                                              Spacer(),
                                                              CustomImageView(
                                                                  svgPath: ImageConstant.imgArrowleftBlueGray900,
                                                                  height: getVerticalSize(12),
                                                                  width: getHorizontalSize(7),
                                                                  margin: getMargin(top: 9, bottom: 9)),

                                                            ]),
                                                      ),
                                                      Padding(
                                                          padding: getPadding(top: 11),
                                                          child: Divider(
                                                              height: getVerticalSize(1),
                                                              thickness: getVerticalSize(1),
                                                              color: ColorConstant.gray300)),
                                                      //منبة وقت التأمل
                                                      Padding(
                                                        padding: getPadding(top: 11),
                                                        child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              CustomIconButton(
                                                                  height: 28,
                                                                  width: 28,
                                                                  margin: getMargin(left: 14, bottom: 2),
                                                                  variant: IconButtonVariant.FillIndigo400,
                                                                  shape: IconButtonShape.RoundedBorder6,
                                                                  child: CustomImageView(svgPath: ImageConstant.imgGroup13582)),
                                                              Padding(
                                                                  padding:
                                                                  getPadding(top: 3),
                                                                  child: Text(
                                                                      "منبة وقت التأمل",
                                                                      overflow: TextOverflow.ellipsis,
                                                                      textAlign:
                                                                      TextAlign.left,
                                                                      style: AppStyle.txtJannaLTBold14Bluegray900)),
                                                              Spacer(),
                                                              CustomImageView(
                                                                  svgPath: ImageConstant.imgArrowleftBlueGray900,
                                                                  height: getVerticalSize(12),
                                                                  width: getHorizontalSize(7),
                                                                  margin: getMargin(top: 9, bottom: 9)),

                                                            ]),
                                                      ),
                                                      Padding(
                                                          padding: getPadding(top: 11),
                                                          child: Divider(
                                                              height: getVerticalSize(1),
                                                              thickness: getVerticalSize(1),
                                                              color: ColorConstant.gray300)),

                                                    ]))),
                                        Container(
                                            width: getHorizontalSize(388),
                                            margin: getMargin(top: 10),
                                            padding: getPadding(
                                                left: 14,
                                                top: 10,
                                                right: 14,
                                                bottom: 10),
                                            decoration: AppDecoration.txtFillBluegray50.copyWith(borderRadius:
                                                BorderRadiusStyle.txtCustomBorderTL14),
                                            child: Text("اعدادات اخري",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtJannaLTBold16Bluegray900)),

                                        SizedBox(
                                            width: double.maxFinite,
                                            child: Container(
                                                padding: getPadding(left: 14, top: 13, right: 14, bottom: 13),
                                                decoration: AppDecoration.fillWhiteA700.copyWith(
                                                    borderRadius: BorderRadiusStyle.customBorderBL14),
                                                child: Column(
                                                    mainAxisSize:
                                                    MainAxisSize.min,
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                    children: [
                                                      //من نحن
                                                      Padding(
                                                        padding: getPadding(top: 11),
                                                        child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.center,
                                                            crossAxisAlignment: CrossAxisAlignment.start,
                                                            children: [
                                                              Card(
                                                                  clipBehavior: Clip.antiAlias,
                                                                  elevation: 0,
                                                                  margin:
                                                                  getMargin(left: 14, bottom: 2),
                                                                  color: ColorConstant.cyan400,
                                                                  shape: RoundedRectangleBorder(borderRadius: BorderRadiusStyle.circleBorder4),
                                                                  child:
                                                                  Container(
                                                                      height: getSize(28),
                                                                      width: getSize(28),
                                                                      padding: getPadding(all: 4),
                                                                      decoration: AppDecoration.fillCyan400.copyWith(borderRadius: BorderRadiusStyle.circleBorder4),
                                                                      child: Stack(children: [
                                                                        CustomImageView(
                                                                            svgPath: ImageConstant.imgSettingsWhiteA700,
                                                                            height: getSize(19),
                                                                            width: getSize(19),
                                                                            alignment: Alignment.center)
                                                                      ]))),
                                                              Padding(
                                                                  padding:
                                                                  getPadding(top: 3),
                                                                  child: Text(
                                                                      "من نحن",
                                                                      overflow: TextOverflow.ellipsis,
                                                                      textAlign:
                                                                      TextAlign.left,
                                                                      style: AppStyle.txtJannaLTBold14Bluegray900)),
                                                              Spacer(),
                                                              CustomImageView(
                                                                  svgPath: ImageConstant.imgArrowleftBlueGray900,
                                                                  height: getVerticalSize(12),
                                                                  width: getHorizontalSize(7),
                                                                  margin: getMargin(top: 9, bottom: 9)),

                                                            ]),
                                                      ),
                                                      Padding(
                                                          padding: getPadding(top: 11),
                                                          child: Divider(
                                                              height: getVerticalSize(1),
                                                              thickness: getVerticalSize(1),
                                                              color: ColorConstant.gray300)),
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapRowarrowleft1(
                                                                context);
                                                          },
                                                          child: Padding(
                                                              padding: getPadding(top: 14),
                                                              child: Row(
                                                                  mainAxisAlignment:
                                                                  MainAxisAlignment.center,
                                                                  crossAxisAlignment: CrossAxisAlignment.start,
                                                                  children: [
                                                                    Container(
                                                                        height: getSize(28),
                                                                        width: getSize(28),
                                                                        margin: getMargin(
                                                                            left: 14,
                                                                            bottom: 2),
                                                                        child: Stack(
                                                                            alignment:
                                                                            Alignment.center,
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgGroup13579, height: getSize(28), width: getSize(28), alignment: Alignment.center),
                                                                              CustomImageView(svgPath: ImageConstant.imgFile, height: getSize(19), width: getSize(19), alignment: Alignment.center)
                                                                            ])),
                                                                    Padding(
                                                                        padding: getPadding(top: 3),
                                                                        child: Text(
                                                                            "سياسة الاستخدام",
                                                                            overflow:
                                                                            TextOverflow.ellipsis,
                                                                            textAlign: TextAlign.left,
                                                                            style: AppStyle.txtJannaLTBold14Bluegray900)),
                                                                    Spacer(),
                                                                    CustomImageView(
                                                                        svgPath: ImageConstant.imgArrowleftBlueGray900,
                                                                        height: getVerticalSize(12),
                                                                        width: getHorizontalSize(7),
                                                                        margin: getMargin(
                                                                            top: 9,
                                                                            bottom: 9)),
                                                                  ])))
                                                    ]))),
                                        Container(
                                            margin: getMargin(top: 56),
                                            padding: getPadding(
                                                left: 18,
                                                top: 16,
                                                right: 18,
                                                bottom: 16),
                                            decoration: AppDecoration.outlineBlack9003f1.copyWith(
                                                borderRadius: BorderRadiusStyle.roundedBorder14),
                                            child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding:
                                                      getPadding(top: 2),
                                                      child: Text("حذف الحساب",
                                                          overflow: TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style: AppStyle.txtJannaLTRegular14Pink300)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant.imgArrowleftBlueGray10002,
                                                      height: getVerticalSize(12),
                                                      width: getHorizontalSize(7),
                                                      margin: getMargin(top: 8, bottom: 8)),
                                                ])),
                                        Container(
                                            margin: getMargin(top: 16),
                                            padding: getPadding(left: 18, top: 15, right: 18, bottom: 15),
                                            decoration: AppDecoration
                                                .outlineBlack9003f1.copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding:
                                                      getPadding(top: 4),
                                                      child: Text("تسجيل خروج",
                                                          overflow: TextOverflow.ellipsis,
                                                          textAlign: TextAlign.left,
                                                          style: AppStyle.txtJannaLTRegular14Bluegray20003)),

                                                  CustomImageView(
                                                      svgPath: ImageConstant.imgArrowleftBlueGray10002,
                                                      height: getVerticalSize(12),
                                                      width: getHorizontalSize(7),
                                                      margin: getMargin(top: 9, bottom: 9)),
                                                ])),
                                        SizedBox(height: getVerticalSize(20),),
                                      ]))))
                    ]))));
  }


  onTapRowarrowleft(BuildContext context) {
  }
  onTapRowarrowleft1(BuildContext context) {
  }
}
