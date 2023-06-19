import 'package:flutter/material.dart';
import 'package:flutter_time_picker_spinner/flutter_time_picker_spinner.dart';
import 'package:shahiq/core/utils/color_constant.dart';
import 'package:shahiq/core/utils/image_constant.dart';
import 'package:shahiq/core/utils/size_utils.dart';
import 'package:shahiq/routes/app_routes.dart';
import 'package:shahiq/theme/app_decoration.dart';
import 'package:shahiq/theme/app_style.dart';
import 'package:shahiq/widgets/app_bar/appbar_image.dart';
import 'package:shahiq/widgets/app_bar/appbar_title.dart';
import 'package:shahiq/widgets/app_bar/custom_app_bar.dart';
import 'package:shahiq/widgets/custom_button.dart';

class EditReminder extends StatefulWidget {
  const EditReminder({Key? key}) : super(key: key);

  @override
  State<EditReminder> createState() => _EditReminderState();
}

class _EditReminderState extends State<EditReminder> {

  DateTime _dateTime=DateTime.now();

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
                text: "تعديل التنبية",
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
                                              Text("احد",
                                                  maxLines: null,
                                                  textAlign:
                                                  TextAlign.right,
                                                  style: AppStyle
                                                      .txtJannaLTBold14Cyan600),
                                              Text("اثنين",
                                                  maxLines: null,
                                                  textAlign:
                                                  TextAlign.right,
                                                  style: AppStyle
                                                      .txtJannaLTRegular14Bluegray200),
                                              Text("ثلاثاء",
                                                  maxLines: null,
                                                  textAlign:
                                                  TextAlign.right,
                                                  style: AppStyle
                                                      .txtJannaLTRegular14Bluegray200),

                                              Text("اربعاء",
                                                  maxLines: null,
                                                  textAlign:
                                                      TextAlign.right,
                                                  style: AppStyle
                                                      .txtJannaLTBold14Cyan600),
                                              Text("خميس",
                                                  maxLines: null,
                                                  textAlign:
                                                  TextAlign.right,
                                                  style: AppStyle
                                                      .txtJannaLTRegular14Bluegray200),

                                              Text("جمعة",
                                                  maxLines: null,
                                                  textAlign:
                                                  TextAlign.right,
                                                  style: AppStyle
                                                      .txtJannaLTBold14Cyan600),
                                              Text("سبت",
                                                  maxLines: null,
                                                  textAlign:
                                                  TextAlign.right,
                                                  style: AppStyle
                                                      .txtJannaLTBold14Cyan600),
                                            ]))
                                  ]))),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "حفظ التعديلات",
                          margin: getMargin(top: 56, bottom: 5),
                          onTap: () {
                            onTaptf(context);
                          })
                    ]))));
  }

  onTaptf(BuildContext context) {
  }

  onTapArrowleft14(BuildContext context) {
    Navigator.pop(context);
  }
}
