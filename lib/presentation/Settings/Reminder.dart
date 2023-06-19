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
import 'package:shahiq/widgets/custom_switch.dart';

class Reminder extends StatefulWidget {
  const Reminder({Key? key}) : super(key: key);

  @override
  State<Reminder> createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  bool isSelectedSwitch = false;
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
                text: "تنبية وقت التأمل",
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
                alignment: Alignment.center,
                padding: getPadding(left: 20, top: 46, right: 20, bottom: 46),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          padding: getPadding(
                              left: 10, top: 0, right: 10, bottom: 0),
                          decoration: AppDecoration.fillWhiteA700.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder14),
                          child: Container(
                              padding: getPadding(
                                  left: 0, top: 64, right: 0, bottom: 64),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius: BorderRadiusStyle.roundedBorder14),
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
                              )),),
                      SizedBox(
                          width: double.maxFinite,
                          child: Container(
                              margin: getMargin(top: 32),
                              padding: getPadding(
                                  left: 15, top: 14, right: 15, bottom: 14),
                              decoration: AppDecoration.fillWhiteA700.copyWith(
                                  borderRadius:
                                  BorderRadiusStyle.roundedBorder14),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                        padding: getPadding(top: 2),
                                        child: Row(
                                            mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                            children: [

                                              Text("تفعيل التنبيه",
                                                  overflow:
                                                  TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle.txtJannaLTBold14Bluegray900),
                                              CustomSwitch(
                                                  margin: getMargin(top: 7),
                                                  value: isSelectedSwitch,

                                                  onChanged: (value) {
                                                    setState(() {
                                                      isSelectedSwitch = value;
                                                    });
                                                  }),
                                            ])),
                                    Padding(
                                        padding: getPadding(top: 12),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.gray300)),
                                    Container(
                                        padding: getPadding(top: 2),
                                        child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,

                                            children: [

                                              Container(
                                                height: getVerticalSize(50),
                                                alignment: Alignment.center,
                                                child: Text("التكرار",
                                                    overflow:
                                                    TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle.txtJannaLTBold14Bluegray900),
                                              ),
                                              Container(
                                                width: getHorizontalSize(150),
                                                height: getVerticalSize(50),
                                                alignment: Alignment.center,
                                                child: ListView.separated(
                                                    itemCount: 3,
                                                    scrollDirection: Axis.horizontal,
                                                    separatorBuilder:(BuildContext context,int i){
                                                      return Text(" ");
                                                    },
                                                    itemBuilder: (BuildContext context,int i){
                                                      return Container(
                                                        alignment: Alignment.center,
                                                        height: getVerticalSize(50),

                                                        child: Text("ثلاثاء",
                                                            maxLines: null,
                                                            textAlign:
                                                            TextAlign.right,
                                                            style: AppStyle
                                                                .txtJannaLTRegular14Bluegray200),
                                                      );
                                                    }
                                                ),
                                              ),
                                            ])),




                                  ]))),
                      CustomButton(
                          height: getVerticalSize(56),
                          text: "تعديل ",
                          margin: getMargin(top: 56, bottom: 5),
                          onTap: () {
                            onTaptf(context);
                          })
                    ]))));
  }

  onTaptf(BuildContext context) {
  }

  onTapArrowleft13(BuildContext context) {
    Navigator.pop(context);
  }

}
