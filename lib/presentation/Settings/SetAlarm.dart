import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:shahiq/core/utils/color_constant.dart';
import 'package:shahiq/core/utils/image_constant.dart';
import 'package:shahiq/core/utils/size_utils.dart';
import 'package:shahiq/theme/app_decoration.dart';
import 'package:shahiq/theme/app_style.dart';
import 'package:shahiq/widgets/app_bar/appbar_image.dart';
import 'package:shahiq/widgets/app_bar/appbar_title.dart';
import 'package:shahiq/widgets/app_bar/custom_app_bar.dart';
import 'package:shahiq/widgets/custom_button.dart';
import 'package:shahiq/widgets/custom_image_view.dart';

class SetAlarm extends StatefulWidget {
  const SetAlarm({Key? key}) : super(key: key);

  @override
  State<SetAlarm> createState() => _SetAlarmState();
}

class _SetAlarmState extends State<SetAlarm> {

  DateTime _dateTime=DateTime.now();

  bool sat=false;
  bool sun=false;
  bool mon=false;
  bool tue=true;
  bool win=false;
  bool thu=true;
  bool fri=false;
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
                text: "تعيين تنبية",
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
                padding: getPadding(left: 20, top: 46, right: 20, bottom: 46),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          width: double.maxFinite,
                          child: Container(
                              padding: getPadding(
                                  left: 27, top: 24, right: 27, bottom: 24),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder14),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        margin: getMargin(top: 3),
                                        child: Text("الوقت",
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .txtJannaLTBold16Bluegray900)),
                                    Padding(
                                        padding: getPadding(
                                            left: 46, top: 9, right: 43),
                                        child: TimePickerSpinner(
                                          is24HourMode: false,
                                          normalTextStyle: TextStyle(
                                              fontSize: 24,
                                              color: ColorConstant.gray300
                                          ),
                                          highlightedTextStyle: TextStyle(
                                              fontSize: 24,
                                              color: ColorConstant.cyan700
                                          ),
                                          spacing: 20,

                                          itemHeight: 80,
                                          isForce2Digits: true,
                                          onTimeChange: (time) {
                                            setState((){
                                              _dateTime = time;
                                            });

                                          },
                                        )
                                    ),
                                    Container(
                                        margin: getMargin(top: 20,),
                                        child: Text("التكرار",
                                            maxLines: null,
                                            textAlign: TextAlign.center,
                                            style: AppStyle
                                                .txtJannaLTBold16Bluegray900)),
                                    Padding(
                                        padding: getPadding(left: 5, top: 14),
                                        child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [
                                              InkWell(
                                                onTap: (){
                                                  setState(() {
                                                    if(sun){sun=false;}else
                                                    {sun=true;}});
                                                },
                                                child: Text("احد",
                                                    maxLines: null,
                                                    textAlign:
                                                    TextAlign.right,
                                                    style:sun? AppStyle.txtJannaLTBold14Cyan600: AppStyle.txtJannaLTRegular14Bluegray200
                                                ),
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  setState(() {
                                                    if(mon){mon=false;}else
                                                    {mon=true;}});
                                                },
                                                child: Text("اثنين",
                                                    maxLines: null,
                                                    textAlign:
                                                    TextAlign.right,
                                                    style:mon? AppStyle.txtJannaLTBold14Cyan600: AppStyle.txtJannaLTRegular14Bluegray200

                                                ),
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  setState(() {
                                                    if(tue){tue=false;}else
                                                    {tue=true;}});
                                                },
                                                child: Text("ثلاثاء",
                                                    maxLines: null,
                                                    textAlign:
                                                    TextAlign.right,
                                                    style:tue? AppStyle.txtJannaLTBold14Cyan600: AppStyle.txtJannaLTRegular14Bluegray200

                                                ),
                                              ),

                                              InkWell(
                                                onTap: (){
                                                  setState(() {
                                                    if(win){win=false;}else
                                                    {win=true;}});
                                                },
                                                child: Text("اربعاء",
                                                    maxLines: null,
                                                    textAlign:
                                                    TextAlign.right,
                                                    style:win? AppStyle.txtJannaLTBold14Cyan600: AppStyle.txtJannaLTRegular14Bluegray200

                                                ),
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  setState(() {
                                                    if(thu){thu=false;}else
                                                    {thu=true;}});
                                                },
                                                child: Text("خميس",
                                                    maxLines: null,
                                                    textAlign:
                                                    TextAlign.right,
                                                    style:thu? AppStyle.txtJannaLTBold14Cyan600: AppStyle.txtJannaLTRegular14Bluegray200

                                                ),
                                              ),

                                              InkWell(
                                                onTap: (){
                                                  setState(() {
                                                    if(fri){fri=false;}else
                                                    {fri=true;}});
                                                },
                                                child: Text("جمعة",
                                                    maxLines: null,
                                                    textAlign:
                                                    TextAlign.right,
                                                    style:fri? AppStyle.txtJannaLTBold14Cyan600: AppStyle.txtJannaLTRegular14Bluegray200

                                                ),
                                              ),
                                              InkWell(
                                                onTap: (){
                                                  setState(() {
                                                    if(sat){sat=false;}else
                                                    {sat=true;}});
                                                },
                                                child: Text("سبت",
                                                    maxLines: null,
                                                    textAlign:
                                                    TextAlign.right,
                                                    style:sat? AppStyle.txtJannaLTBold14Cyan600: AppStyle.txtJannaLTRegular14Bluegray200

                                                ),
                                              ),
                                            ]))
                                  ]))),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "تعيين",
                          margin: getMargin(top: 56, bottom: 5),
                          onTap: () {
                            onTaptf(context);
                          })
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
                                  onBackPressed(context);
                                }),
                          ],
                        ),
                        CustomImageView(
                            svgPath: ImageConstant.imgSuccess,
                            height: getSize(114),
                            width: getSize(114),
                            margin: getMargin(left: 0, top: 30)),

                        Padding(
                            padding: getPadding(top: 20),
                            child: Text("تم تعيين تنبيه لوقت التأمل",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtJannaLTBold16Bluegray900)),
                        Container(
                            width: getHorizontalSize(261),
                            margin: getMargin(left: 44, top: 6, right: 43),
                            child: Text(
                                "سنرسل اليك تنبيه  بالتأمل في الوقت الذي قمت باختياره",
                                maxLines: null,
                                textAlign: TextAlign.center,
                                style: AppStyle.txtJannaLTRegular14Bluegray200)),
                        CustomButton(
                            height: getVerticalSize(56),
                            text: "الانتقال الي الرئيسية",
                            margin: getMargin(left: 13, top: 31, right: 13, bottom: 14))
                      ])),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }

  onBackPressed(BuildContext context) {
    Navigator.pop(context);
  }

}
