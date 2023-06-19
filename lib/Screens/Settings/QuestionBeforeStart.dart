import 'package:flutter/material.dart';
import 'package:shahiq/core/utils/color_constant.dart';
import 'package:shahiq/core/utils/image_constant.dart';
import 'package:shahiq/core/utils/size_utils.dart';
import 'package:shahiq/routes/app_routes.dart';
import 'package:shahiq/theme/app_decoration.dart';
import 'package:shahiq/theme/app_style.dart';
import 'package:shahiq/widgets/custom_image_view.dart';

import '../../widgets/custom_button.dart';

class QuestionBeforeStart extends StatefulWidget {
  const QuestionBeforeStart({Key? key}) : super(key: key);

  @override
  State<QuestionBeforeStart> createState() => _QuestionBeforeStartState();
}

class _QuestionBeforeStartState extends State<QuestionBeforeStart> {
  int selectIndex=0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 20, top: 50, right: 20, bottom: 50),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text("متي تفضل التأمل خلال يومك ؟",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtJannaLTBold24),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Text("سؤال 1 من  3",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtJannaLTRegular14Bluegray200)),
                      Padding(
                          padding: getPadding(top: 7),
                          child: Container(
                              height: getVerticalSize(6),
                              width: getHorizontalSize(388),
                              decoration: BoxDecoration(
                                  color: ColorConstant.indigo50,
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(3))),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      getHorizontalSize(3)),
                                  child: LinearProgressIndicator(
                                      value: 0.44,
                                      backgroundColor: ColorConstant.indigo50,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          ColorConstant.cyan600))))),
                      CustomButton(
                          height: getVerticalSize(46),
                          text: "الصباح",
                          margin: getMargin(top: 32),
                          onTap: (){setState(() {selectIndex=0;});},
                          variant: selectIndex==0?ButtonVariant.OutlineCyan600:ButtonVariant.FillWhiteA700,
                          padding: ButtonPadding.PaddingAll8,
                          fontStyle: selectIndex==0?ButtonFontStyle.JannaLTBold16Cyan600:ButtonFontStyle.JannaLTBold16Bluegray900
                      ),
                      CustomButton(
                          height: getVerticalSize(46),
                          text: "المساء",
                          margin: getMargin(top: 16),
                          onTap: (){setState(() {selectIndex=1;});},
                          variant: selectIndex==1?ButtonVariant.OutlineCyan600:ButtonVariant.FillWhiteA700,
                          padding: ButtonPadding.PaddingAll8,
                          fontStyle: selectIndex==1?ButtonFontStyle.JannaLTBold16Cyan600:ButtonFontStyle.JannaLTBold16Bluegray900
                      ),
                      CustomButton(
                          height: getVerticalSize(46),
                          text: "الظهر",
                          margin: getMargin(top: 16),
                          onTap: (){setState(() {selectIndex=2;});},
                          variant: selectIndex==2?ButtonVariant.OutlineCyan600:ButtonVariant.FillWhiteA700,
                          padding: ButtonPadding.PaddingAll8,
                          fontStyle: selectIndex==2?ButtonFontStyle.JannaLTBold16Cyan600:ButtonFontStyle.JannaLTBold16Bluegray900
                      ),
                      CustomButton(
                          height: getVerticalSize(46),
                          text: "العصر",
                          margin: getMargin(top: 16),
                          onTap: (){setState(() {selectIndex=3;});},
                          variant: selectIndex==3?ButtonVariant.OutlineCyan600:ButtonVariant.FillWhiteA700,
                          padding: ButtonPadding.PaddingAll8,
                          fontStyle: selectIndex==3?ButtonFontStyle.JannaLTBold16Cyan600:ButtonFontStyle.JannaLTBold16Bluegray900
                      ),
                      CustomButton(
                          height: getVerticalSize(46),
                          text: "المغرب",
                          margin: getMargin(top: 16),
                          onTap: (){setState(() {selectIndex=4;});},
                          variant: selectIndex==4?ButtonVariant.OutlineCyan600:ButtonVariant.FillWhiteA700,
                          padding: ButtonPadding.PaddingAll8,
                          fontStyle: selectIndex==4?ButtonFontStyle.JannaLTBold16Cyan600:ButtonFontStyle.JannaLTBold16Bluegray900
                      ),
                      CustomButton(
                          height: getVerticalSize(46),
                          text: "العشاء",
                          margin: getMargin(top: 16),
                          onTap: (){setState(() {selectIndex=5;});},
                          variant: selectIndex==5?ButtonVariant.OutlineCyan600:ButtonVariant.FillWhiteA700,
                          padding: ButtonPadding.PaddingAll8,
                          fontStyle: selectIndex==5?ButtonFontStyle.JannaLTBold16Cyan600:ButtonFontStyle.JannaLTBold16Bluegray900
                      ),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "متابعة",
                          margin: getMargin(top: 56),
                          onTap: () {
                            onTaptf(context);
                          }),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "تخطي",
                          margin: getMargin(top: 16, bottom: 5),
                          variant: ButtonVariant.FillBluegray50,
                          fontStyle: ButtonFontStyle.JannaLTBold16Bluegray200)
                    ]))));
  }

  onTaptf(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: Container(
                  width: getHorizontalSize(388),
                  padding: getPadding(left: 19, top: 18, right: 19, bottom: 18),
                  decoration: AppDecoration.fillWhiteA700
                      .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                            children: [
                              const Spacer(),
                              CustomImageView(
                                  svgPath: ImageConstant.imgClose,
                                  height: getSize(32),
                                  width: getSize(32),
                                  onTap: () {
                                    onTapImgClose(context);
                                  }),
                            ]),
                        CustomImageView(
                            svgPath:
                            ImageConstant.imgIllstraddtreat,
                            height: getSize(156),
                            width: getSize(156),
                            alignment: Alignment.topCenter),

                        Text(
                            "تريد ان نرسل لك تنبيهات ؟ ",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle
                                .txtJannaLTBold16Bluegray900),
                        Text(
                            "ادخل الوقت المناسب لك لنرسل لك تنبيه بوقت التأمل",
                            maxLines: null,
                            textAlign: TextAlign.center,
                            style: AppStyle.txtJannaLTRegular14Bluegray200),
                        CustomButton(
                            height: getVerticalSize(56),
                            text: "تعيين تنبيهات",
                            margin: getMargin(left: 14, top: 39, right: 12),
                            onTap: () {
                              onTapSetReminder(context);
                            }),
                        CustomButton(
                          onTap: (){
                            onTapImgClose(context);
                          },
                            height: getVerticalSize(56),
                            text: "لاحقا",
                            margin: getMargin(left: 14, top: 15, right: 12, bottom: 14),
                            variant: ButtonVariant.FillBluegray50,
                            fontStyle: ButtonFontStyle.JannaLTBold16Bluegray200)
                      ])),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
  onTapImgClose(BuildContext context) {
    Navigator.pop(context);
  }

  onTapSetReminder(BuildContext context) {
  }

}
