import 'package:flutter/material.dart';
import 'package:shahiq/core/app_export.dart';
import 'package:shahiq/widgets/custom_button.dart';
import 'package:shahiq/widgets/custom_checkbox.dart';

class CreateAccountTwoScreen extends StatefulWidget {
  const CreateAccountTwoScreen({Key? key}) : super(key: key);

  @override
  State<CreateAccountTwoScreen> createState() => _CreateAccountTwoScreenState();
}

class _CreateAccountTwoScreenState extends State<CreateAccountTwoScreen> {
  bool isCheckbox = false;

  bool isCheckbox1 = false;

  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

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
                            onTap: () {
                              onTapImgArrowleft(context);
                            }),
                        Spacer(),
                        CustomImageView(
                            svgPath: ImageConstant.img1,
                            height: getVerticalSize(41),
                            width: getHorizontalSize(123)),
                        Container(
                            height: getVerticalSize(97),
                            width: getHorizontalSize(273),
                            margin: getMargin(top: 50),
                            child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  Align(
                                      alignment: Alignment.topCenter,
                                      child: Text("انشاء حساب",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style: AppStyle.txtJannaLTBold24)),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                          width: getHorizontalSize(273),
                                          child: Text(
                                              "اضف كلمة مرور خاصة بك وقم بتأكيدها ليتم انشاء حسابك",
                                              maxLines: null,
                                              textAlign: TextAlign.center,
                                              style: AppStyle
                                                  .txtJannaLTRegular14Bluegray200
                                                  .copyWith(
                                                      letterSpacing:
                                                          getHorizontalSize(
                                                              0.76)))))
                                ])),
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
                                          hintStyle:AppStyle.txtJannaLTRegular14Bluegray200.copyWith(letterSpacing: getHorizontalSize(0.76))
                                        ),
                                      ),
                                    ),
                                  ),

                                ])),
                        Container(
                            margin: getMargin(left: 32, top: 20, right: 32),
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
                        Container(
                            margin: getMargin(left: 32, top: 20, right: 32),
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
                                        controller: confirmPassController,
                                        keyboardType: TextInputType.phone,
                                        validator: (value) {
                                          if (value == null || value.isEmpty) {
                                            return "من فضلك اكد كلمة المرور";
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
                                            hintText: "تأكيد كلمة المرور",
                                            alignLabelWithHint: true,
                                            hintStyle:AppStyle.txtJannaLTRegular14Bluegray200.copyWith(letterSpacing: getHorizontalSize(0.76))
                                        ),
                                      ),
                                    ),
                                  ),

                                ])),

                        Align(
                            alignment: Alignment.centerRight,
                            child: CustomCheckbox(
                                alignment: Alignment.centerRight,
                                width: getHorizontalSize(245),
                                text: "بدخولك فأنت توافق علي السياسة والخصوصية",
                                value: isCheckbox1,
                                margin: getMargin(top: 13, right: 36),
                                fontStyle: CheckboxFontStyle.MontserratMedium12,
                                isRightCheck: true,
                                onChange: (value) {
                                  setState(() {isCheckbox1 = value;});
                                })),
                        CustomButton(
                            height: getVerticalSize(56),
                            text: "انشاء حساب",
                            margin: getMargin(
                                left: 32, top: 22, right: 32, bottom: 157),
                            onTap: () {
                              onTapOne(context);
                            })
                      ])),
            )));
  }


  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapOne(BuildContext context) {
   // Navigator.pushNamed(context, AppRoutes.questionBeforeStartScreen);
  }
}
