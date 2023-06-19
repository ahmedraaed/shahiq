import 'package:flutter/material.dart';import 'package:shahiq/core/app_export.dart';import 'package:shahiq/widgets/custom_button.dart';class DoneDialog extends StatelessWidget {const DoneDialog({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return Container(width: getHorizontalSize(388), padding: getPadding(left: 19, top: 18, right: 19, bottom: 18), decoration: AppDecoration.fillWhiteA700.copyWith(borderRadius: BorderRadiusStyle.roundedBorder14), child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [Align(alignment: Alignment.centerLeft, child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [CustomImageView(svgPath: ImageConstant.imgClose, height: getSize(32), width: getSize(32), margin: getMargin(bottom: 112), onTap: () {onTapImgClose(context);}), CustomImageView(svgPath: ImageConstant.imgSuccess, height: getSize(114), width: getSize(114), margin: getMargin(left: 90, top: 30))])), Padding(padding: getPadding(top: 20), child: Text("تم تعيين تنبيه لوقت التأمل", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtJannaLTBold16Bluegray900)), Container(width: getHorizontalSize(261), margin: getMargin(left: 44, top: 6, right: 43), child: Text("سنرسل اليك تنبيه  بالتأمل في الوقت الذي قمت باختياره", maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtJannaLTRegular14Bluegray200)), CustomButton(height: getVerticalSize(56), text: "الانتقال الي الرئيسية", margin: getMargin(left: 13, top: 31, right: 13, bottom: 14))])); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapImgClose(BuildContext context) { Navigator.pop(context); } 
 }
