import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shahiq/core/app_export.dart';
import 'package:shahiq/widgets/custom_button.dart';
//Ctrl+alt+l

class CreateAccountScreen extends StatefulWidget {
  const CreateAccountScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountScreen> createState() => _CreateAccountScreenState();
}

class _CreateAccountScreenState extends State<CreateAccountScreen> {
  TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: SingleChildScrollView(
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  padding: getPadding(left: 20, top: 32, right: 20, bottom: 32),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgArrowleftBlueGray90018x10,
                            height: getVerticalSize(18),
                            width: getHorizontalSize(10),
                            alignment: Alignment.centerLeft,
                            onTap: () {onTapImgArrowleft(context);}),
                        Spacer(),
                        CustomImageView(
                            svgPath: ImageConstant.img1,
                            height: getVerticalSize(41),
                            width: getHorizontalSize(123)),
                        Padding(
                            padding: getPadding(top: 50),
                            child: Text("انشاء حساب",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtJannaLTBold24)),
                        Container(
                            width: getHorizontalSize(296),
                            margin: getMargin(left: 45, top: 2, right: 45),
                            child: Text(
                                "قم بادخال البريد الالكتروني الخاص بك او يمكنك التسجيل عن طريق جوجل او ابل",
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtJannaLTRegular14Bluegray200
                                    .copyWith(
                                    letterSpacing: getHorizontalSize(0.76)))),
                        Container(
                            margin: getMargin(left: 32, top: 30, right: 32),
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
                                          hintStyle:AppStyle.txtJannaLTRegular10.copyWith(letterSpacing: getHorizontalSize(0.2)),
                                        ),
                                      ),
                                    ),
                                  ),

                                ])),
                        CustomButton(
                            height: getVerticalSize(56),
                            text: "متابعة",
                            margin: getMargin(left: 32, top: 24, right: 32),
                            onTap: () {
                              onTaptf(context);
                            }),
                        GestureDetector(
                            onTap: () {
                              onTapTxttf(context);
                            },
                            child: Container(
                                width: getHorizontalSize(187),
                                margin: getMargin(top: 20),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "لديك حساب بالفعل ؟ ",
                                          style: TextStyle(
                                              color: ColorConstant.blueGray200,
                                              fontSize: getFontSize(12),
                                              fontFamily: 'Janna LT',
                                              fontWeight: FontWeight.w400,
                                              letterSpacing:
                                              getHorizontalSize(0.76))),
                                      TextSpan(
                                          text: "تسجيل دخول",
                                          style: TextStyle(
                                              color: ColorConstant.indigo90001,
                                              fontSize: getFontSize(12),
                                              fontFamily: 'Janna LT',
                                              fontWeight: FontWeight.w400,
                                              letterSpacing:
                                              getHorizontalSize(0.76)))
                                    ]),
                                    textAlign: TextAlign.center))),
                        Padding(
                            padding: getPadding(left: 30, top: 55, right: 31),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                      padding: getPadding(top: 11, bottom: 10),
                                      child: SizedBox(
                                          width: getHorizontalSize(102),
                                          child: Divider(
                                              height: getVerticalSize(1),
                                              thickness: getVerticalSize(1),
                                              color: ColorConstant.gray300))),
                                  Padding(
                                      padding: getPadding(left: 8),
                                      child: Text("او يمكنك التسجيل عبر",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtJannaLTRegular12)),
                                  Padding(
                                      padding: getPadding(top: 11, bottom: 10),
                                      child: SizedBox(
                                          width: getHorizontalSize(111),
                                          child: Divider(
                                              height: getVerticalSize(1),
                                              thickness: getVerticalSize(1),
                                              color: ColorConstant.gray300,
                                              indent: getHorizontalSize(8))))
                                ])),
                        CustomButton(
                            height: getVerticalSize(56),
                            text: "تسجيل الدخول بواسطة ابل",
                            margin: getMargin(left: 30, top: 27, right: 31),
                            variant: ButtonVariant.OutlineGray300,
                            padding: ButtonPadding.PaddingT13,
                            fontStyle: ButtonFontStyle.JannaLTRegular16,
                            prefixWidget: Container(
                                margin: getMargin(right: 16),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgAppleOriginal))),
                        CustomButton(
                            height: getVerticalSize(56),
                            text: "تسجيل الدخول بواسطة جوجل",
                            margin: getMargin(
                                left: 30, top: 16, right: 31, bottom: 58),
                            variant: ButtonVariant.OutlineGray300,
                            padding: ButtonPadding.PaddingT13,
                            fontStyle: ButtonFontStyle.JannaLTRegular16,
                            prefixWidget: Container(
                                margin: getMargin(right: 16),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgGoogleOriginal)))
                      ])),
            )));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTaptf(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.questionBeforeStartScreen);
  }

  onTapTxttf(BuildContext context) {
    // Navigator.pushNamed(context, AppRoutes.loginScreen);
  }
}

