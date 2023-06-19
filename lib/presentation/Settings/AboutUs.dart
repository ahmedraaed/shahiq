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

class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  State<AboutUs> createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
              height: getVerticalSize(56),
              leadingWidth: 0,
              leading:null,
              centerTitle: true,
              title: AppbarTitle(
                text: "من نحن",
                margin: getMargin(top: 17),

              ),
              actions: [
                AppbarImage(
                    height: getSize(12),
                    width: getSize(12),
                    svgPath: ImageConstant.imgArrowleftBlueGray90018x10,
                    margin: getMargin(top: 17,left: 17,  bottom: 0))
              ],
            ),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    padding: getPadding(top: 39),
                    child: Padding(
                        padding: getPadding(left: 20, right: 20, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                  width: double.maxFinite,
                                  child: Container(
                                      padding: getPadding(
                                          left: 29,
                                          top: 27,
                                          right: 29,
                                          bottom: 27),
                                      decoration: AppDecoration
                                          .outlineBlack9003f1
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder14),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.img1,
                                                height: getVerticalSize(31),
                                                width: getHorizontalSize(93)),
                                            Container(
                                                width: getHorizontalSize(328),
                                                margin: getMargin(top: 18),
                                                child: Text(
                                                    "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى،",
                                                    maxLines: null,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .txtJannaLTRegular14Bluegray200)),
                                            Container(
                                                width: getHorizontalSize(328),
                                                margin: getMargin(top: 9),
                                                child: Text(
                                                    "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى،",
                                                    maxLines: null,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .txtJannaLTRegular14Bluegray200)),
                                            Container(
                                                width: getHorizontalSize(328),
                                                margin: getMargin(top: 9),
                                                child: Text(
                                                    "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى،",
                                                    maxLines: null,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .txtJannaLTRegular14Bluegray200)),
                                            Padding(
                                                padding: getPadding(top: 26),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgFacebook,
                                                          height: getSize(20),
                                                          width: getSize(20),
                                                          margin: getMargin(left: 22)
                                                      ),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgTwitter,
                                                          height: getSize(20),
                                                          width: getSize(20),
                                                          margin: getMargin(left: 22)
                                                      ),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgInstagram,
                                                          height: getSize(20),
                                                          width: getSize(20),
                                                          margin: getMargin(left: 22)

                                                      )
                                                    ]))
                                          ]))),
                              SizedBox(
                                  width: double.maxFinite,
                                  child: Container(
                                      margin: getMargin(top: 48),
                                      padding: getPadding(all: 20),
                                      decoration: AppDecoration
                                          .outlineBlack9003f1
                                          .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .roundedBorder14),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                width: getHorizontalSize(126),
                                                child: Text("الاسئلة الشائعة",
                                                    maxLines: null,
                                                    textAlign: TextAlign.center,
                                                    style: AppStyle
                                                        .txtJannaLTBold20)),
                                            Padding(
                                                padding: getPadding(top: 28),
                                                child: ListView.builder(
                                                    shrinkWrap: true,
                                                    itemCount: 4,
                                                    itemBuilder:
                                                        (context, index) {
                                                      return ExpansionTile(
                                                        tilePadding: EdgeInsets.zero,
                                                        title: Container(
                                                          padding: getPadding(
                                                            left: 14,
                                                            top: 6,
                                                            right: 14,
                                                            bottom: 6,
                                                          ),
                                                          decoration: AppDecoration.fillGray50.copyWith(
                                                            borderRadius: BorderRadiusStyle.roundedBorder14,
                                                          ),
                                                          child: Row(
                                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                            children: [
                                                              Container(
                                                                width: getHorizontalSize(
                                                                  169,
                                                                ),
                                                                margin: getMargin(
                                                                  top: 10,
                                                                ),
                                                                child: Text(
                                                                  "كيف يمكنني الغاء الاشتراك",
                                                                  maxLines: null,
                                                                  textAlign: TextAlign.right,
                                                                  style: AppStyle.txtJannaLTRegular16Bluegray900,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                        trailing: CustomImageView(
                                                          svgPath: ImageConstant.imgArrowup,
                                                          height: getVerticalSize(
                                                            7,
                                                          ),
                                                          width: getHorizontalSize(
                                                            12,
                                                          ),
                                                          margin: getMargin(
                                                            top: 17,
                                                            bottom: 16,
                                                          ),
                                                        ),
                                                        children: [
                                                          Padding(
                                                            padding: getPadding(
                                                              top: 7,
                                                            ),
                                                            child: Column(
                                                              mainAxisAlignment: MainAxisAlignment.start,
                                                              children: [
                                                                SizedBox(
                                                                  width: double.maxFinite,
                                                                  child: Container(
                                                                    width: getHorizontalSize(
                                                                      348,
                                                                    ),
                                                                    padding: getPadding(
                                                                      left: 14,
                                                                      top: 12,
                                                                      right: 14,
                                                                      bottom: 12,
                                                                    ),
                                                                    decoration: AppDecoration.fillGray50.copyWith(
                                                                      borderRadius: BorderRadiusStyle.roundedBorder14,
                                                                    ),
                                                                    child: Column(
                                                                      mainAxisSize: MainAxisSize.min,
                                                                      crossAxisAlignment: CrossAxisAlignment.end,
                                                                      mainAxisAlignment: MainAxisAlignment.start,
                                                                      children: [
                                                                        Container(
                                                                          width: getHorizontalSize(
                                                                            277,
                                                                          ),
                                                                          margin: getMargin(
                                                                            left: 42,
                                                                          ),
                                                                          child: Text(
                                                                            "text text text ",
                                                                            maxLines: null,
                                                                            textAlign: TextAlign.right,
                                                                            style: AppStyle.txtJannaLTRegular14Bluegray200,
                                                                          ),
                                                                        ),
                                                                      ],
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                        onExpansionChanged: (value) {},
                                                      );
                                                    }))
                                          ])))
                            ]))))));
  }

  onTapArrowleft12(BuildContext context) {
    Navigator.pop(context);
  }
}
