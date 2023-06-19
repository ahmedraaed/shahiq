import 'package:flutter/material.dart';
import 'package:shahiq/core/utils/color_constant.dart';
import 'package:shahiq/core/utils/image_constant.dart';
import 'package:shahiq/core/utils/size_utils.dart';
import 'package:shahiq/routes/app_routes.dart';
import 'package:shahiq/theme/app_decoration.dart';
import 'package:shahiq/theme/app_style.dart';
import 'package:shahiq/widgets/custom_bottom_bar.dart';
import 'package:shahiq/widgets/custom_button.dart';
import 'package:shahiq/widgets/custom_image_view.dart';

class ShahiqPlus extends StatefulWidget {
  const ShahiqPlus({Key? key}) : super(key: key);

  @override
  State<ShahiqPlus> createState() => _ShahiqPlusState();
}

class _ShahiqPlusState extends State<ShahiqPlus> {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        body: SizedBox(
          width: size.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: getPadding(
                left: 20,
                right: 19,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    margin: getMargin(top: getVerticalSize(30)),
                    alignment: Alignment.center,
                    child: Text(
                      "شهيق بلس",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtJannaLTBold24,
                    ),
                  ),

                  Container(
                      margin: getMargin(top: 24),
                      decoration: AppDecoration
                          .fillWhiteA700
                          .copyWith(
                          borderRadius:
                          BorderRadiusStyle
                              .roundedBorder14),
                      child: Row(
                          mainAxisAlignment:
                          MainAxisAlignment.end,
                          children: [
                            Card(
                                clipBehavior:
                                Clip.antiAlias,
                                elevation: 0,
                                margin: getMargin(left: 14),
                                color: ColorConstant.indigo90001,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadiusStyle.customBorderLR14),
                                child: Container(
                                    height: getVerticalSize(83),
                                    width: getHorizontalSize(48),
                                    padding: getPadding(left: 12, top: 28, right: 12, bottom: 28),
                                    decoration: AppDecoration.fillIndigo90001.copyWith(
                                        borderRadius: BorderRadiusStyle.customBorderLR14),
                                    child:
                                    Stack(children: [
                                      CustomImageView(
                                          svgPath: ImageConstant.imgGrid,
                                          height: getSize(24),
                                          width: getSize(24),
                                          alignment: Alignment.bottomCenter)
                                    ]))),
                            Container(
                                height:
                                getVerticalSize(56),
                                width: getHorizontalSize(176),
                                margin: getMargin(top: 14, bottom: 11),
                                child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                          alignment: Alignment
                                              .topRight,
                                          child: SizedBox(
                                              width:
                                              getHorizontalSize(
                                                  78),
                                              child: Text(
                                                  "خطة الاشتراك",
                                                  maxLines:
                                                  null,
                                                  textAlign:
                                                  TextAlign
                                                      .right,
                                                  style: AppStyle
                                                      .txtJannaLTRegular14Bluegray20003))),
                                      Align(
                                          alignment: Alignment
                                              .bottomCenter,
                                          child: Text(
                                              "الحزمة السنوية لشهيق بلس ",
                                              overflow:
                                              TextOverflow
                                                  .ellipsis,
                                              textAlign:
                                              TextAlign
                                                  .left,
                                              style: AppStyle
                                                  .txtJannaLTBold16Bluegray900))
                                    ])),
                            Spacer(),
                            Container(
                                width:
                                getHorizontalSize(29),
                                margin: getMargin(
                                    left: 18,
                                    top: 44,
                                    bottom: 15),
                                child: Text("مفعلة",
                                    maxLines: null,
                                    textAlign:
                                    TextAlign.right,
                                    style: AppStyle
                                        .txtJannaLTRegular12Cyan400)),

                          ])),
                  Padding(
                    padding: getPadding(
                      top: 24,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        1,
                      ),
                      thickness: getVerticalSize(
                        1,
                      ),
                      color: ColorConstant.gray300,
                      endIndent: getHorizontalSize(
                        1,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 27,
                      right: 1,
                    ),
                    child: Text(
                      "اختر الحزمة التي تناسبك",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtJannaLTBold20,
                    ),
                  ),
                  Container(
                    width: getHorizontalSize(
                      312,
                    ),
                    margin: getMargin(
                      left: 75,
                      top: 1,
                      right: 1,
                    ),
                    child: Text(
                      "نقدم لكم ثلاث باقات متميزة لتعزيز حياتكم الروحية",
                      maxLines: null,
                      textAlign: TextAlign.right,
                      style: AppStyle.txtJannaLTRegular14Bluegray200.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.76,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 1,
                      top: 21,
                      right: 1,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(

                          width: getHorizontalSize(
                            121,
                          ),
                          child: Container(
                            padding: getPadding(
                              all: 8,
                            ),
                            decoration:
                            AppDecoration.fillBluegray50.copyWith(
                              borderRadius:
                              BorderRadiusStyle.roundedBorder14,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgUserBlueGray10002,
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                  alignment: Alignment.centerRight,
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    51,
                                  ),
                                  margin: getMargin(
                                    top: 2,
                                    bottom: 19,
                                  ),
                                  child: Text(
                                    "فترة تجريبية",
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtJannaLTRegular16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(

                          width: getHorizontalSize(
                            121,
                          ),
                          child: Container(
                            padding: getPadding(
                              all: 8,
                            ),
                            decoration:
                            AppDecoration.fillBluegray50.copyWith(
                              borderRadius:
                              BorderRadiusStyle.roundedBorder14,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgGridBlueGray10002,
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                  alignment: Alignment.centerRight,
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    51,
                                  ),
                                  margin: getMargin(
                                    top: 2,
                                    bottom: 19,
                                  ),
                                  child: Text(
                                    "الحزمة السنوية",
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtJannaLTRegular16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),

                        SizedBox(

                          width: getHorizontalSize(
                            121,
                          ),
                          child: Container(
                            padding: getPadding(
                              all: 8,
                            ),
                            decoration:
                            AppDecoration.fillCyan600.copyWith(
                              borderRadius:
                              BorderRadiusStyle.roundedBorder14,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgTrash,
                                  height: getSize(
                                    24,
                                  ),
                                  width: getSize(
                                    24,
                                  ),
                                  alignment: Alignment.centerRight,
                                ),
                                Container(
                                  width: getHorizontalSize(
                                    51,
                                  ),
                                  margin: getMargin(
                                    top: 2,
                                    bottom: 19,
                                  ),
                                  child: Text(
                                    "الحزمة الشهرية",
                                    maxLines: null,
                                    textAlign: TextAlign.center,
                                    style: AppStyle.txtJannaLTBold16,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: double.maxFinite,
                    child: Container(
                      margin: getMargin(
                        top: 20,
                        right: 1,
                      ),
                      padding: getPadding(
                        left: 22,
                        top: 24,
                        right: 22,
                        bottom: 24,
                      ),
                      decoration: AppDecoration.outlineBlack9000f2.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder14,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: getVerticalSize(
                              48,
                            ),
                            width: getHorizontalSize(
                              149,
                            ),
                            margin: getMargin(
                              top: 1,
                              right: 2,
                            ),
                            child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                Align(
                                  alignment: Alignment.topCenter,
                                  child: SizedBox(
                                    width: getHorizontalSize(
                                      149,
                                    ),
                                    child: Text(
                                      "الحزمة الشهرية في شهيق",
                                      maxLines: null,
                                      textAlign: TextAlign.right,
                                      style: AppStyle
                                          .txtJannaLTBold14Bluegray90001,
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.bottomRight,
                                  child: SizedBox(
                                    width: getHorizontalSize(
                                      80,
                                    ),
                                    child: Text(
                                      "800 دولار / شهر",
                                      maxLines: null,
                                      textAlign: TextAlign.right,
                                      style: AppStyle
                                          .txtJannaLTRegular12Bluegray20003,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: getVerticalSize(600),
                            child: ListView.builder(
                                shrinkWrap: true,
                                physics: BouncingScrollPhysics(),
                                itemCount: 15,
                                itemBuilder: (BuildContext context,int index){
                                  return  Padding(
                                    padding: getPadding(
                                      left: 7,
                                      top: 23,
                                      right: 2,
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: getHorizontalSize(
                                            304,
                                          ),
                                          child: Text(
                                            "تحميل الجلسات ومشاهدتها في اي وقت بدون الاتصال بالانترنت",
                                            maxLines: null,
                                            textAlign: TextAlign.right,
                                            style: AppStyle
                                                .txtJannaLTRegular12Bluegray20003,
                                          ),
                                        ),
                                        CustomImageView(
                                          //svgPath: ImageConstant.imgLockBlueGray10001,
                                          svgPath: ImageConstant.imgCheckmarkCyan40001,
                                          height: getVerticalSize(
                                            11,
                                          ),
                                          width: getHorizontalSize(
                                            16,
                                          ),
                                          margin: getMargin(
                                            left: 14,
                                            top: 3,
                                            bottom: 8,
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                },

                            ),
                          ),
                          CustomButton(
                            height: getVerticalSize(
                              56,
                            ),
                            text: "الاشتراك في الحزمة",
                            margin: getMargin(
                              top: 0,
                              right: 2,
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


}
