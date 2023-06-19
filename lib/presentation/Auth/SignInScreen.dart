import 'package:flutter/material.dart';
import 'package:shahiq/core/app_export.dart';
import 'package:shahiq/widgets/custom_button.dart';

class LogInScreen extends StatefulWidget {
  const LogInScreen({Key? key}) : super(key: key);

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 45),
                              child: Padding(
                                  padding: getPadding(
                                      left: 20, right: 50, bottom: 101),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowleftBlueGray90018x10,
                                            height: getVerticalSize(18),
                                            width: getHorizontalSize(10),
                                            alignment: Alignment.centerLeft,
                                            onTap: () {
                                              onTapImgArrowleft(context);
                                            }),
                                        CustomImageView(
                                            svgPath: ImageConstant.img1,
                                            height: getVerticalSize(41),
                                            width: getHorizontalSize(123),
                                            margin: getMargin(
                                                top: 108, right: 105)),
                                        Padding(
                                            padding:
                                                getPadding(top: 51, right: 103),
                                            child: Text("تسجيل دخول",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtJannaLTBold24)),
                                        Container(
                                            width: getHorizontalSize(200),
                                            margin:
                                                getMargin(top: 1, right: 62),
                                            child: Text(
                                                "ادخل بياناتك ليتم تسجيل دخولك ",
                                                maxLines: null,
                                                textAlign: TextAlign.center,
                                                style: AppStyle.txtJannaLTRegular14Bluegray200.copyWith(letterSpacing: getHorizontalSize(0.76)))),
                                        Container(
                                            margin: getMargin(left: 32, top: 30, right: 1),
                                            padding: getPadding(
                                                left: 19, top: 5, right: 19, bottom: 5),
                                            decoration: AppDecoration.fillBluegray50.copyWith(
                                                borderRadius: BorderRadiusStyle.roundedBorder14),
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      //height: 30.h,
                                                      child: TextFormField(
                                                        controller: emailController,
                                                        keyboardType: TextInputType.phone,
                                                        validator: (value) {
                                                          if (value == null || value.isEmpty) {
                                                            return "من فضلك ادخل البريد الالكتروني";
                                                          }
                                                          // else if (!value.isValidPhone()) {
                                                          //   return "ادخل رقم الهاتف الصحيح";
                                                          // }
                                                          return null;
                                                        },
                                                        decoration: InputDecoration(
                                                            border: InputBorder.none,
                                                            errorBorder: InputBorder.none,
                                                            enabledBorder: InputBorder.none,
                                                            focusedBorder: InputBorder.none,
                                                            prefixIcon: CustomImageView(
                                                                svgPath:ImageConstant.imgMail,
                                                                height: getSize(24),
                                                                width: getSize(24),
                                                                margin: getMargin(left: 20, top: 3, bottom: 3)),
                                                            hintText: "البريد الالكتروني",
                                                            alignLabelWithHint: true,
                                                            hintStyle:AppStyle.txtJannaLTRegular14Bluegray200.copyWith(letterSpacing: getHorizontalSize(0.76))
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                ])),
                                        Container(
                                            margin: getMargin(left: 32, top: 20, right: 1),
                                            padding: getPadding(
                                                left: 19, top: 5, right: 19, bottom: 5),
                                            decoration: AppDecoration.fillBluegray50.copyWith(
                                                borderRadius: BorderRadiusStyle.roundedBorder14),
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                mainAxisSize: MainAxisSize.min,
                                                children: [
                                                  Expanded(
                                                    child: Container(
                                                      //height: 30.h,
                                                      child: TextFormField(
                                                        controller: passController,
                                                        keyboardType: TextInputType.phone,
                                                        validator: (value) {
                                                          if (value == null || value.isEmpty) {
                                                            return "من فضلك ادخل كلمة المرور";
                                                          }
                                                          // else if (!value.isValidPhone()) {
                                                          //   return "ادخل رقم الهاتف الصحيح";
                                                          // }
                                                          return null;
                                                        },
                                                        decoration: InputDecoration(
                                                            border: InputBorder.none,
                                                            errorBorder: InputBorder.none,
                                                            enabledBorder: InputBorder.none,
                                                            focusedBorder: InputBorder.none,
                                                            prefixIcon: CustomImageView(
                                                                svgPath:ImageConstant.imgLock,
                                                                height: getSize(24),
                                                                width: getSize(24),
                                                                margin: getMargin(left: 20, top: 3, bottom: 3)),
                                                            hintText: "كلمة المرور",
                                                            alignLabelWithHint: true,
                                                            hintStyle:AppStyle.txtJannaLTRegular14Bluegray200.copyWith(letterSpacing: getHorizontalSize(0.76))
                                                        ),
                                                      ),
                                                    ),
                                                  ),

                                                ])),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtNuncpharetrault(context);
                                            },
                                            child: Container(
                                                width: getHorizontalSize(123),
                                                margin: getMargin(
                                                    top: 10, right: 1),
                                                child: Text(
                                                    "هل نسيت كلمة السر ؟",
                                                    maxLines: null,
                                                    textAlign: TextAlign.right,
                                                    style: AppStyle
                                                        .txtJannaLTRegular12Indigo90001
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.76))))),
                                        CustomButton(
                                            height: getVerticalSize(56),
                                            text: "دخول",
                                            margin: getMargin(
                                                left: 33, top: 24, right: 1)),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxttf(context);
                                            },
                                            child: Container(
                                                width: getHorizontalSize(172),
                                                margin: getMargin(
                                                    top: 20, right: 76),
                                                child: RichText(
                                                    text: TextSpan(children: [
                                                      TextSpan(
                                                          text: "ليس",
                                                          style: TextStyle(
                                                              color: ColorConstant
                                                                  .blueGray200,
                                                              fontSize:
                                                                  getFontSize(
                                                                      12),
                                                              fontFamily:
                                                                  'Janna LT',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.76))),
                                                      TextSpan(
                                                          text: " ",
                                                          style: TextStyle(
                                                              color: ColorConstant
                                                                  .blueGray200,
                                                              fontSize:
                                                                  getFontSize(
                                                                      12),
                                                              fontFamily:
                                                                  'Janna LT',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.76))),
                                                      TextSpan(
                                                          text: "لديك ",
                                                          style: TextStyle(
                                                              color: ColorConstant
                                                                  .blueGray200,
                                                              fontSize:
                                                                  getFontSize(
                                                                      12),
                                                              fontFamily:
                                                                  'Janna LT',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.76))),
                                                      TextSpan(
                                                          text: "حساب ؟",
                                                          style: TextStyle(
                                                              color: ColorConstant
                                                                  .blueGray200,
                                                              fontSize:
                                                                  getFontSize(
                                                                      12),
                                                              fontFamily:
                                                                  'Janna LT',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.76))),
                                                      TextSpan(
                                                          text: " ",
                                                          style: TextStyle(
                                                              color: ColorConstant
                                                                  .blueGray200,
                                                              fontSize:
                                                                  getFontSize(
                                                                      12),
                                                              fontFamily:
                                                                  'Janna LT',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.76))),
                                                      TextSpan(
                                                          text: "انشاء حساب",
                                                          style: TextStyle(
                                                              color: ColorConstant
                                                                  .indigo90001,
                                                              fontSize:
                                                                  getFontSize(
                                                                      12),
                                                              fontFamily:
                                                                  'Janna LT',
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w400,
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.76)))
                                                    ]),
                                                    textAlign:
                                                        TextAlign.center))),
                                        Padding(
                                            padding:
                                                getPadding(left: 31, top: 55),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 11, bottom: 10),
                                                      child: SizedBox(
                                                          width:
                                                              getHorizontalSize(
                                                                  102),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color: ColorConstant
                                                                  .gray300))),
                                                  Padding(
                                                      padding:
                                                          getPadding(left: 8),
                                                      child: Text(
                                                          "او يمكنك التسجيل عبر",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtJannaLTRegular12)),
                                                  Padding(
                                                      padding: getPadding(
                                                          top: 11, bottom: 10),
                                                      child: SizedBox(
                                                          width:
                                                              getHorizontalSize(
                                                                  111),
                                                          child: Divider(
                                                              height:
                                                                  getVerticalSize(
                                                                      1),
                                                              thickness:
                                                                  getVerticalSize(
                                                                      1),
                                                              color:
                                                                  ColorConstant
                                                                      .gray300,
                                                              indent:
                                                                  getHorizontalSize(
                                                                      8))))
                                                ])),
                                        CustomButton(
                                            height: getVerticalSize(56),
                                            text: "سجل بواسطة ابل",
                                            margin: getMargin(left: 31, top: 27),
                                            variant: ButtonVariant.OutlineGray300,
                                            padding: ButtonPadding.PaddingT13,
                                            fontStyle: ButtonFontStyle.JannaLTRegular16,
                                            prefixWidget: Container(
                                                margin: getMargin(right: 16),
                                                child: CustomImageView(svgPath: ImageConstant.imgAppleOriginal))),
                                        CustomButton(
                                            height: getVerticalSize(56),
                                            text: "سجل بواسطة جوجل",
                                            margin: getMargin(left: 31, top: 16),
                                            variant: ButtonVariant.OutlineGray300,
                                            padding: ButtonPadding.PaddingT13,
                                            fontStyle: ButtonFontStyle.JannaLTRegular16,
                                            prefixWidget: Container(
                                                margin: getMargin(right: 16),
                                                child: CustomImageView(svgPath: ImageConstant.imgGoogleOriginal)))
                                      ]))))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapTxtNuncpharetrault(BuildContext context) {
   // Navigator.pushNamed(context, AppRoutes.resetPassScreen);
  }

  /// Navigates to the createAnAccountScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the createAnAccountScreen.
  onTapTxttf(BuildContext context) {
    //Navigator.pushNamed(context, AppRoutes.createAnAccountScreen);
  }
}
