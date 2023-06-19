import 'package:flutter/material.dart';
import 'package:shahiq/core/utils/color_constant.dart';
import 'package:shahiq/core/utils/image_constant.dart';
import 'package:shahiq/core/utils/size_utils.dart';
import 'package:shahiq/theme/app_style.dart';
import 'package:shahiq/widgets/app_bar/appbar_image.dart';
import 'package:shahiq/widgets/app_bar/appbar_title.dart';
import 'package:shahiq/widgets/app_bar/custom_app_bar.dart';

class Policy extends StatefulWidget {
  const Policy({Key? key}) : super(key: key);

  @override
  State<Policy> createState() => _PolicyState();
}

class _PolicyState extends State<Policy> {
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
                text: "سياسة الاستخدام",
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
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 50, right: 20, bottom: 50),
                child:ListView.separated(
                    itemCount: 7,
                    separatorBuilder:(BuildContext context,int i){
                      return SizedBox(height: getVerticalSize(20),);
                    },
                    itemBuilder: (BuildContext context,int index){
                      return  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                                width: getHorizontalSize(double.infinity),
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "عنوان رقم ",
                                          style: TextStyle(
                                              color: ColorConstant.blueGray900,
                                              fontSize: getFontSize(16),
                                              fontFamily: 'Janna LT',
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: getHorizontalSize(0.2))),
                                      TextSpan(
                                          text: "واحد",
                                          style: TextStyle(
                                              color: ColorConstant.cyan600,
                                              fontSize: getFontSize(16),
                                              fontFamily: 'Janna LT',
                                              fontWeight: FontWeight.w700,
                                              letterSpacing: getHorizontalSize(0.2)))
                                    ]),
                                    textAlign: TextAlign.right)),
                            Container(
                                width: getHorizontalSize(352),
                                margin: getMargin(left: 35),
                                child: Text(
                                    "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص ",
                                    maxLines: null,
                                    textAlign: TextAlign.right,
                                    style: AppStyle.txtJannaLTRegular14Bluegray200
                                        .copyWith(
                                        letterSpacing: getHorizontalSize(0.2)))),

                          ]);
                    })

            )));
  }

  onTapArrowleft11(BuildContext context) {
    Navigator.pop(context);
  }
}
