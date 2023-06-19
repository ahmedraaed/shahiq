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


class Downloads extends StatefulWidget {
  const Downloads({Key? key}) : super(key: key);

  @override
  State<Downloads> createState() => _DownloadsState();
}

class _DownloadsState extends State<Downloads> {
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
                    text: "التنزيلات",
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
            body: Padding(
                padding: getPadding(left: 20, top: 42, right: 20),
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(16));
                    },
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: getPadding(
                          all: 18,
                        ),
                        decoration: AppDecoration.fillWhiteA700.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder14,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgRectangle2977x83,
                              height: getVerticalSize(77,),
                              width: getHorizontalSize(83,),
                              radius: BorderRadius.circular(
                                getHorizontalSize(12,),
                              ),
                              margin: getMargin(left: 18,),
                            ),

                            Padding(
                              padding: getPadding(
                                left: 10,
                                top: 8,
                                bottom: 2,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "التأمل",
                                    maxLines: null,
                                    textAlign: TextAlign.right,
                                    style: AppStyle.txtJannaLTBold10,
                                  ),

                                  Row(
                                    children: [
                                      Text(
                                        "الاسترخاء التام",
                                        maxLines: null,
                                        textAlign: TextAlign.right,
                                        style: AppStyle.txtJannaLTBold14Bluegray900,
                                      ),
                                      SizedBox(width: getHorizontalSize(5),),
                                      Text(
                                        "( جلسة الامل )",
                                        maxLines: null,
                                        textAlign: TextAlign.right,
                                        style: AppStyle.txtJannaLTRegular14Bluegray200,
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    width: getHorizontalSize(
                                      45,
                                    ),
                                    child: Text(
                                      "48 دقيقة",
                                      maxLines: null,
                                      textAlign: TextAlign.right,
                                      style: AppStyle.txtJannaLTRegular12,
                                    ),
                                  ),
                                ],
                              ),
                            ),

                            Spacer(),

                            CustomImageView(
                              svgPath: ImageConstant.imgArrowdown,
                              height: getSize(24,),
                              width: getSize(24,),
                              margin: getMargin(top: 53,),
                            ),
                          ],
                        ),
                      );
                    }))));
  }

  onTapArrowleft8(BuildContext context) {
    Navigator.pop(context);
  }
}
