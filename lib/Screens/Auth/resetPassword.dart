import 'package:flutter/material.dart';
import 'package:shahiq/core/app_export.dart';
import 'package:shahiq/widgets/custom_button.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController passController = TextEditingController();
  TextEditingController confirmPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: SingleChildScrollView(
              child: Container(
                  width: double.maxFinite,
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
                        Padding(
                            padding: getPadding(top: 51),
                            child: Text("اعادة تعيين كلمة المرور",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtJannaLTBold24)),
                        Container(
                            width: getHorizontalSize(246),
                            margin: getMargin(top: 1),
                            child: Text("قم بادخال كلمة المرور الجديدة ثم اكدها",
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtJannaLTRegular14Bluegray200
                                    .copyWith(
                                        letterSpacing: getHorizontalSize(0.76)))),
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
                                            return "من فضلك ادخل كلمة المرور الجديدة";
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
                                            hintText: "كلمة المرور الجديدة",
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
                                            return "تأكيد كلمة المرور";
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

                        CustomButton(
                            height: getVerticalSize(56),
                            text: "متابعة",
                            margin: getMargin(
                                left: 32, top: 24, right: 32, bottom: 289))
                      ])),
            )));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
