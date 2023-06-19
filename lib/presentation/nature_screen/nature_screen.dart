import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../nature_screen/widgets/nature_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:shahiq/core/app_export.dart';
import 'package:shahiq/widgets/app_bar/appbar_image.dart';
import 'package:shahiq/widgets/app_bar/appbar_title.dart';
import 'package:shahiq/widgets/app_bar/custom_app_bar.dart';

class NatureScreen extends StatelessWidget {
  const NatureScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: 60.h,
                leadingWidth: 30.w,
                actions: [
                  AppbarImage(
                      height: getVerticalSize(18),
                      width: getHorizontalSize(10),
                      svgPath: ImageConstant.imgArrowleftBlueGray90018x10,
                      margin:EdgeInsetsDirectional.only(end: 15.w, top: 3.h, bottom:20.w),
                      onTap: () {
                        onTapArrowleft2(context);
                      })],
                centerTitle: true,
                title: AppbarTitle(text: "الطبيعة")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(top: 43, bottom: 43,right: 15,left: 15),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                     Container(
                      height: 50.h,
                      decoration: AppDecoration.outlineGray30001
                          .copyWith(
                          borderRadius: BorderRadiusStyle
                              .roundedBorder14),
                      child: TextFormField(

                       decoration: InputDecoration(
                           prefixIcon:   Container(
                            padding: EdgeInsetsDirectional.only(start: 5.w),
                            width: 60.w,
                            child: Row(
                                mainAxisAlignment:
                                MainAxisAlignment.start,
                                children: [
                                 CustomImageView(
                                     svgPath:
                                     ImageConstant.imgContrast,
                                     height: getSize(24),
                                     width: getSize(24),
                                     margin:EdgeInsetsDirectional.only(end: 8.w) ),

                                 SizedBox(
                                     height: getVerticalSize(24),
                                     child: VerticalDivider(
                                         width: getHorizontalSize(1),
                                         thickness: getVerticalSize(1),
                                         color:
                                         ColorConstant.gray300)),
                                ]),
                           ),
                           hintText: "ادخل نص البحث",
                           helperStyle: AppStyle
                               .txtJannaLTRegular14Bluegray20001
                               .copyWith(
                               letterSpacing:
                               getHorizontalSize(
                                   0.5)),
                           border: InputBorder.none
                       ),

                      ),
                     ),
                     SingleChildScrollView(
                         scrollDirection: Axis.horizontal,
                         padding:EdgeInsetsDirectional.only(top: 16.h, end: 14.w),
                         child: Row(
                             mainAxisAlignment:
                             MainAxisAlignment.center,
                             children: [
                              Container(
                                  width: getHorizontalSize(101),
                                  margin:EdgeInsetsDirectional.only(end: 5.w),
                                  padding: getPadding(
                                      left: 21,
                                      top: 1,
                                      right: 21,
                                      bottom: 1),
                                  decoration: AppDecoration
                                      .txtOutlineCyan600
                                      .copyWith(
                                      borderRadius: BorderRadiusStyle
                                          .txtCircleBorder12),
                                  child: Text("مقترح لك",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtJannaLTRegular14Cyan600
                                          .copyWith(
                                          letterSpacing:
                                          getHorizontalSize(
                                              0.5)))),
                              Container(
                                  width: getHorizontalSize(76),
                                  margin:EdgeInsetsDirectional.only(end: 5.w),

                                  padding: getPadding(
                                      left: 22,
                                      top: 1,
                                      right: 22,
                                      bottom: 1),
                                  decoration: AppDecoration
                                      .txtOutlineGray300
                                      .copyWith(
                                      borderRadius: BorderRadiusStyle
                                          .txtCircleBorder12),
                                  child: Text("الغابة",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtJannaLTRegular14Bluegray200
                                          .copyWith(
                                          letterSpacing:
                                          getHorizontalSize(
                                              0.5)))),
                              Container(
                                  width: getHorizontalSize(82),
                                  margin:EdgeInsetsDirectional.only(end: 5.w),

                                  padding: getPadding(
                                      left: 22,
                                      top: 1,
                                      right: 22,
                                      bottom: 1),
                                  decoration: AppDecoration
                                      .txtOutlineGray300
                                      .copyWith(
                                      borderRadius: BorderRadiusStyle
                                          .txtCircleBorder12),
                                  child: Text("الطيور",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtJannaLTRegular14Bluegray200
                                          .copyWith(
                                          letterSpacing:
                                          getHorizontalSize(
                                              0.5)))),
                              Container(
                                  width: getHorizontalSize(82),
                                  margin:EdgeInsetsDirectional.only(end: 5.w),

                                  padding: getPadding(
                                      left: 22,
                                      top: 1,
                                      right: 22,
                                      bottom: 1),
                                  decoration: AppDecoration
                                      .txtOutlineGray300
                                      .copyWith(
                                      borderRadius: BorderRadiusStyle
                                          .txtCircleBorder12),
                                  child: Text("الهدوء",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      style: AppStyle
                                          .txtJannaLTRegular14Bluegray200
                                          .copyWith(
                                          letterSpacing:
                                          getHorizontalSize(
                                              0.5)))),
                             ])),


                      Expanded(
                          child: Padding(
                              padding: getPadding(left: 20, top: 32, right: 20),
                              child: GridView.builder(
                                  shrinkWrap: true,
                                  gridDelegate:
                                      SliverGridDelegateWithFixedCrossAxisCount(
                                          mainAxisExtent: getVerticalSize(200),
                                          crossAxisCount: 2,
                                          mainAxisSpacing:
                                              getHorizontalSize(16),
                                          crossAxisSpacing:
                                              getHorizontalSize(16)),
                                  physics: BouncingScrollPhysics(),
                                  itemCount: 6,
                                  itemBuilder: (context, index) {
                                    return NatureItemWidget(
                                        onTapColumnrectangle: () {
                                      onTapColumnrectangle(context);
                                    });
                                  })))
                    ]))));
  }

  /// Navigates to the playlistNatureScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the playlistNatureScreen.
  onTapColumnrectangle(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.playlistNatureScreen);
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft2(BuildContext context) {
    Navigator.pop(context);
  }
}
