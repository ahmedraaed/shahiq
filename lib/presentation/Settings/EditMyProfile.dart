import 'package:flutter/material.dart';
import 'package:shahiq/core/utils/color_constant.dart';
import 'package:shahiq/core/utils/image_constant.dart';
import 'package:shahiq/core/utils/size_utils.dart';
import 'package:shahiq/theme/app_decoration.dart';
import 'package:shahiq/theme/app_style.dart';
import 'package:shahiq/widgets/app_bar/appbar_image.dart';
import 'package:shahiq/widgets/app_bar/appbar_title.dart';
import 'package:shahiq/widgets/app_bar/custom_app_bar.dart';
import 'package:shahiq/widgets/custom_image_view.dart';

class EditMyProfile extends StatefulWidget {
  const EditMyProfile({Key? key}) : super(key: key);

  @override
  State<EditMyProfile> createState() => _EditMyProfileState();
}

class _EditMyProfileState extends State<EditMyProfile> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(96),
                leadingWidth: 39,
                leading: AppbarImage(
                    height: getSize(30),
                    width: getSize(30),
                    svgPath: ImageConstant.imgCloseBlueGray900,
                    margin: getMargin(right: 15, bottom: 0),
                    onTap: () {
                      onTapClose(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "تعديل الملف الشخصي"),
                actions: [
                  AppbarImage(
                      height: getSize(30),
                      width: getSize(30),
                      svgPath: ImageConstant.imgCheckmarkBlueGray900,
                      margin: getMargin(left: 17,  bottom: 0))
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 43),
                    child: Padding(
                        padding: getPadding(left: 52, right: 52, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Card(
                                  clipBehavior: Clip.antiAlias,
                                  elevation: 0,
                                  margin: EdgeInsets.all(0),
                                  color: ColorConstant.lightBlue5087,
                                  shape: RoundedRectangleBorder(
                                      borderRadius:
                                      BorderRadiusStyle.circleBorder42),
                                  child: Container(
                                      height: getSize(84),
                                      width: getSize(84),
                                      padding: getPadding(all: 7),
                                      decoration: AppDecoration
                                          .fillLightblue5087
                                          .copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .circleBorder42),
                                      child: Stack(children: [
                                        CustomImageView(
                                            imagePath:
                                            ImageConstant.imgElmmedcardoval,
                                            height: getSize(69),
                                            width: getSize(69),
                                            radius: BorderRadius.circular(
                                                getHorizontalSize(34)),
                                            alignment: Alignment.center)
                                      ]))),
                              Container(
                                  margin: getMargin(left: 1, top: 30, right: 1),
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
                                  margin: getMargin(left: 1, top: 20, right: 1),
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
                            ])
                    )))));
  }

  onTapClose(BuildContext context) {
    Navigator.pop(context);
  }
}
