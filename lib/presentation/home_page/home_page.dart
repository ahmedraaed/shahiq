import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home_page/widgets/home1_item_widget.dart';
import '../home_page/widgets/home_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:shahiq/core/app_export.dart';
import 'package:shahiq/widgets/app_bar/appbar_image.dart';
import 'package:shahiq/widgets/app_bar/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray5001,
            appBar: CustomAppBar(
                height: 40.h,
                leadingWidth: 60.w,
                leading: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, AppRoutes.profileScreen);
                  },
                  child: CustomImageView(
                      imagePath: ImageConstant.imgEllipse,
                      height: 40.h,
                      width: 60.w,
                      radius: BorderRadius.circular(getHorizontalSize(24)),
                      margin: EdgeInsetsDirectional.only(end: 10.w, top: 1.h, start: 10.w, bottom: 1.h)),
                ),
                centerTitle: true,
                title: AppbarImage(
                    height: getVerticalSize(27),
                    width: getHorizontalSize(83),
                    svgPath: ImageConstant.img1),
                actions: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.notificationScreen);
                    },
                    child: Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        margin:EdgeInsetsDirectional.only(end: 10.w, top: 1.h, bottom: 1.h),
                        shape: RoundedRectangleBorder(
                            side: BorderSide(
                                color: ColorConstant.gray300,
                                width: getHorizontalSize(1)),
                            borderRadius: BorderRadiusStyle.roundedBorder14),
                        child: Container(
                            height: getVerticalSize(53),
                            width: getHorizontalSize(51),
                            padding: getPadding(
                                left: 13, top: 14, right: 13, bottom: 14),
                            decoration: AppDecoration.outlineGray300.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder14),
                            child: Stack(alignment: Alignment.topLeft, children: [
                              CustomImageView(
                                  svgPath:
                                  ImageConstant.imgIconlycurvednotification,
                                  height: getSize(24),
                                  width: getSize(24),
                                  alignment: Alignment.topLeft,
                                  margin: getMargin(right: 1, bottom: 1)),
                              PositionedDirectional(
                                top: 1.h,
                                  end: 3.w,
                                  child: Container(
                                      height: getSize(6),
                                      width: getSize(6),

                                      decoration: BoxDecoration(
                                          color: ColorConstant.indigo400,
                                          borderRadius: BorderRadius.circular(
                                              getHorizontalSize(3)))))
                            ]))),
                  ),

                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 30),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              height: getVerticalSize(58),
                              width: getHorizontalSize(388),
                              margin:EdgeInsetsDirectional.only(start: 10.w),
                              child:
                                  GestureDetector(
                                      onTap: () {
                                        onTapRowlinetwo(context);
                                      },
                                      child: Container(
                                          padding: getPadding(
                                              left: 16,
                                              top: 17,
                                              right: 16,
                                              bottom: 17),
                                          decoration: AppDecoration
                                              .outlineGray30001
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder14),
                                          child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgContrast,
                                                    height: getSize(24),
                                                    width: getSize(24),
                                                    margin:
                                                    getMargin(left: 15)),
                                                SizedBox(
                                                    height:
                                                        getVerticalSize(24),
                                                    child: VerticalDivider(
                                                        width:
                                                            getHorizontalSize(
                                                                1),
                                                        thickness:
                                                            getVerticalSize(
                                                                1),
                                                        color: ColorConstant
                                                            .gray300)),

                                                Padding(
                                                    padding:EdgeInsetsDirectional.only(start: 20.w,),
                                                    child: Text("ادخل نص البحث",
                                                        overflow: TextOverflow.ellipsis,
                                                        style: AppStyle
                                                            .txtJannaLTRegular14Bluegray20001
                                                            .copyWith(
                                                            letterSpacing:
                                                            getHorizontalSize(
                                                                0.5)))),

                                              ])))),
                          SizedBox(height: 15.h,),
                          Container(
                              height: 110.h,
                              width: MediaQuery.of(context).size.width,
                              decoration: AppDecoration
                                  .gradientIndigo90001IndigoA200
                                  .copyWith(
                                  borderRadius:
                                  BorderRadiusStyle
                                      .roundedBorder14),
                              margin:EdgeInsetsDirectional.only(top: 10.h, start: 10.w,end: 10.w),
                              child: Stack(
                                  children: [
                                    Container(

                                        child: Padding(
                                          padding:EdgeInsetsDirectional.only( top: 15.h,
                                              start: 15.w),
                                          child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                    "اشترك الان في الحزمة السنوية",
                                                    overflow:
                                                        TextOverflow
                                                            .ellipsis,
                                                    style: AppStyle
                                                        .txtJannaLTBold14),
                                                SizedBox(height: 10.h,),
                                                SizedBox(width: getHorizontalSize(157),
                                                    child: Text("ويمكنك ايضا ألقاء نظرة على باقات التأمل الملهمة", maxLines: null, textAlign: TextAlign.right, style: AppStyle.txtJannaLTRegular12WhiteA700)),
                                                SizedBox(height: 10.h,),
                                                Container(
                                                    width:70.w,


                                                    padding: getPadding(
                                                        left:
                                                        12,
                                                        top: 1,
                                                        right:
                                                        12,
                                                        bottom:
                                                        1),
                                                    decoration: AppDecoration
                                                        .txtFillWhiteA700
                                                        .copyWith(
                                                        borderRadius: BorderRadiusStyle
                                                            .txtRoundedBorder8),
                                                    child: Text(
                                                        "عرض الباقات",
                                                        overflow:
                                                        TextOverflow
                                                            .ellipsis,

                                                        style: AppStyle
                                                            .txtJannaLTRegular12Indigo900)),

                                              ]),
                                        )),
                                    PositionedDirectional(
                                      end: 0,
                                      bottom: 0,
                                      child: SizedBox(
                                        height:
                                        getVerticalSize(99),
                                        width: getHorizontalSize(
                                            368),
                                        child: Stack(
                                            alignment:
                                            Alignment.center,
                                            children: [
                                              Align(
                                                  alignment:
                                                  Alignment
                                                      .center,
                                                  child: SizedBox(
                                                      height:
                                                      getVerticalSize(
                                                          99),
                                                      width:
                                                      getHorizontalSize(
                                                          368),
                                                      child: Stack(
                                                          alignment:
                                                          AlignmentDirectional.bottomEnd,
                                                          children: [
                                                            CustomImageView(
                                                                imagePath: ImageConstant.imgVector2,
                                                                height: getVerticalSize(75),
                                                                width: getHorizontalSize(172),
                                                                alignment: Alignment.bottomLeft),
                                                            CustomImageView(
                                                                imagePath: ImageConstant.imgVector3,
                                                                height: getVerticalSize(76),
                                                                width: getHorizontalSize(233),
                                                                alignment: Alignment.bottomLeft)
                                                          ])))
                                            ])),),
                                    PositionedDirectional(
                                      top: -25,
                                      end: -15,
                                      child: SizedBox(
                                          height: getVerticalSize(92),
                                          width: getHorizontalSize(74),
                                          child: Stack(
                                              alignment: AlignmentDirectional.centerEnd,
                                              children: [
                                                CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgEllipse62,
                                                    height:
                                                        getVerticalSize(92),
                                                    width:
                                                        getHorizontalSize(74),
                                                    alignment:
                                                        Alignment.center),
                                                Align(
                                                    alignment:
                                                        AlignmentDirectional.centerEnd,
                                                    child: SizedBox(
                                                        height:
                                                            getVerticalSize(
                                                                66),
                                                        width:
                                                            getHorizontalSize(
                                                                61),
                                                        child: Stack(
                                                            alignment: AlignmentDirectional
                                                                .centerEnd,
                                                            children: [
                                                              CustomImageView(
                                                                  imagePath:
                                                                      ImageConstant
                                                                          .imgEllipse6266x61,
                                                                  height:
                                                                      getVerticalSize(
                                                                          66),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          61),
                                                                  alignment:
                                                                      Alignment
                                                                          .center),
                                                              Align(
                                                                  alignment:
                                                                      AlignmentDirectional
                                                                          .centerEnd,
                                                                  child: Container(
                                                                      margin: getMargin(left: 6),
                                                                      padding: getPadding(all: 11),
                                                                      decoration: AppDecoration.fillWhiteA70019.copyWith(borderRadius: BorderRadiusStyle.circleBorder24),
                                                                      child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [
                                                                        Container(
                                                                            height: getSize(22),
                                                                            width: getSize(22),
                                                                            decoration: BoxDecoration(color: ColorConstant.whiteA70019, borderRadius: BorderRadius.circular(getHorizontalSize(11))))
                                                                      ])))
                                                            ])))
                                              ])),
                                    )
                                  ])),
                          SizedBox(height: 15.h,),
                          Padding(
                            padding:  EdgeInsetsDirectional.only(end: 10.w,start: 10.w),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("المقترحات",
                                      overflow: TextOverflow.ellipsis,
                                      style: AppStyle.txtJannaLTBold20),

                                  Text("المزيد",
                                      overflow: TextOverflow.ellipsis,
                                      style: AppStyle
                                          .txtJannaLTRegular14Indigo90001),
                                ]),
                          ),
                          SizedBox(
                              height: getVerticalSize(144),
                              child: ListView.separated(
                                  padding: getPadding(top: 21),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(
                                        height: getVerticalSize(16));
                                  },
                                  itemCount: 2,
                                  itemBuilder: (context, index) {
                                    return HomeItemWidget(
                                        onTapImgUnsplashndn00km: () {
                                      onTapImgUnsplashndn00km(context);
                                    });
                                  })),
                          SizedBox(height: 15.h,),
                          Padding(
                            padding:  EdgeInsetsDirectional.only(start: 10.w,end: 10.w),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                children: [
                                  Text("متابعة الاستماع",
                                      overflow: TextOverflow.ellipsis,
                                      style: AppStyle.txtJannaLTBold20),
                                  Text("المزيد",
                                      overflow: TextOverflow.ellipsis,
                                      style: AppStyle
                                          .txtJannaLTRegular14Indigo90001),
                                ]),
                          ),
                          Container(
                              margin: getMargin(left: 20, top: 19, right: 20),
                              padding: getPadding(all: 15),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder14),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgRectangle29,
                                        height: getVerticalSize(77),
                                        width: getHorizontalSize(83),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(12)),
                                        margin: getMargin(
                                            left: 18,
                                            top: 3,
                                            right: 3,
                                            bottom: 3)),
                                    Expanded(
                                        child: Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,


                                            children: [
                                              Text("التأمل",
                                                  maxLines: null,
                                                  style: AppStyle.txtJannaLTBold10),

                                              Row(
                                                  children: [
                                                    Text("الاسترخاء التام",
                                                        style: AppStyle.txtJannaLTBold14Bluegray900),
                                                    SizedBox(width: 5.w,),
                                                    Text(
                                                        "( جلسة الامل )",
                                                        style: AppStyle
                                                            .txtJannaLTRegular14Bluegray200),

                                                  ]),

                                              Text(
                                                  "10 من 40 جلسة",
                                                  style: AppStyle
                                                      .txtJannaLTRegular12),
                                              Padding(
                                                  padding:
                                                  getPadding(top: 3),
                                                  child: Container(
                                                      height: getVerticalSize(
                                                          4),
                                                      width: getHorizontalSize(
                                                          181),
                                                      decoration: BoxDecoration(
                                                          color: ColorConstant
                                                              .indigo90033,
                                                          borderRadius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  2))),
                                                      child: LinearProgressIndicator(
                                                          value: 0.42,
                                                          backgroundColor: ColorConstant.indigo90033,
                                                          valueColor: AlwaysStoppedAnimation<Color>(ColorConstant.cyan600))))
                                            ])),

                                    CustomImageView(
                                        svgPath: ImageConstant
                                            .imgArrowleftIndigo90001,
                                        height: getSize(24),
                                        width: getSize(24),
                                        radius: BorderRadius.only(
                                            bottomRight: Radius.circular(
                                                getHorizontalSize(14))),
                                        margin: getMargin(top: 59)),
                                  ])),
                          SizedBox(height: 15.h,),
                          Padding(
                              padding:EdgeInsetsDirectional.only(start: 10.w,end: 10.w),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("الجديد !",
                                        overflow: TextOverflow.ellipsis,
                                        style: AppStyle.txtJannaLTBold20),

                                    Text("المزيد",
                                        overflow: TextOverflow.ellipsis,
                                        style: AppStyle
                                            .txtJannaLTRegular14Indigo90001),
                                  ])),
                          GridView.builder(
                            padding: EdgeInsetsDirectional.only(start: 10.w,end: 10.w),
                              shrinkWrap: true,
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                      mainAxisExtent: 175.h,
                                      crossAxisCount: 2,
                                      mainAxisSpacing:
                                          getHorizontalSize(16),
                                      crossAxisSpacing:
                                          getHorizontalSize(16)),
                              physics: NeverScrollableScrollPhysics(),
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return Home1ItemWidget(
                                    onTapColumnrectangle: () {
                                  onTapColumnrectangle(context);
                                });
                              }),
                          SizedBox(height: 30.h,),
                        ])))));
  }

  /// Navigates to the playMeditationSessionsOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the playMeditationSessionsOneScreen.
  onTapColumnrectangle(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.playMeditationSessionsOneScreen);
  }

  /// Navigates to the playlistScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the playlistScreen.
  onTapImgUnsplashndn00km(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.playlistScreen);
  }

  /// Navigates to the searchEmptyStateScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the searchEmptyStateScreen.
  onTapRowlinetwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.searchEmptyStateScreen);
  }
}
