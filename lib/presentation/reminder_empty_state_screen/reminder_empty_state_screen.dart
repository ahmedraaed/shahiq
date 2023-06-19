import 'package:flutter/material.dart';import 'package:shahiq/core/app_export.dart';import 'package:shahiq/widgets/app_bar/appbar_image.dart';import 'package:shahiq/widgets/app_bar/appbar_title.dart';import 'package:shahiq/widgets/app_bar/custom_app_bar.dart';import 'package:shahiq/widgets/custom_icon_button.dart';class ReminderEmptyStateScreen extends StatelessWidget {const ReminderEmptyStateScreen({Key? key}) : super(key: key);

@override Widget build(BuildContext context) { return SafeArea(child: Scaffold(backgroundColor: ColorConstant.gray50, appBar: CustomAppBar(height: getVerticalSize(80), leadingWidth: 30, leading: AppbarImage(height: getVerticalSize(16), width: getHorizontalSize(10), svgPath: ImageConstant.imgArrowleftBlueGray90018x10, margin: getMargin(left: 20, top: 2, bottom: 37), onTap: () {onTapArrowleft17(context);}), centerTitle: true, title: AppbarTitle(text: "تنبيه وقت التأمل")), body: Container(width: double.maxFinite, padding: getPadding(left: 20, top: 181, right: 20, bottom: 181), child: Row(mainAxisAlignment: MainAxisAlignment.end, crossAxisAlignment: CrossAxisAlignment.end, mainAxisSize: MainAxisSize.min, children: [Container(height: getVerticalSize(406), width: getHorizontalSize(215), margin: getMargin(top: 31), child: Stack(alignment: Alignment.topLeft, children: [Align(alignment: Alignment.centerLeft, child: Column(mainAxisSize: MainAxisSize.min, mainAxisAlignment: MainAxisAlignment.start, children: [SizedBox(width: getHorizontalSize(203), child: Text("تنبيهات وقت التأمل فارغة", maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtJannaLTBold20)), Container(width: getHorizontalSize(187), margin: getMargin(top: 1), child: Text("يمكنك اضافة تنبيه لوقت التأمل من هنا", maxLines: null, textAlign: TextAlign.center, style: AppStyle.txtJannaLTRegular14Bluegray200))])), CustomImageView(svgPath: ImageConstant.img1, height: getSize(162), width: getSize(162), alignment: Alignment.topLeft, margin: getMargin(left: 20)), CustomImageView(svgPath: ImageConstant.imgIllstrremindersemptyarrow, height: getSize(166), width: getSize(166), alignment: Alignment.bottomRight)])), CustomIconButton(height: 56, width: 56, margin: getMargin(left: 24, top: 376, bottom: 5), variant: IconButtonVariant.FillIndigo90001, shape: IconButtonShape.CircleBorder28, padding: IconButtonPadding.PaddingAll18, onTap: () {onTapBtnPlus(context);}, child: CustomImageView(svgPath: ImageConstant.imgPlusWhiteA700))])))); } 
/// Navigates to the reminderScreen when the action is triggered.
///
/// The [BuildContext] parameter is used to build the navigation stack.
/// When the action is triggered, this function uses the `Navigator` widget
/// to push the named route for the reminderScreen.
onTapBtnPlus(BuildContext context) { Navigator.pushNamed(context, AppRoutes.reminderScreen); } 


/// Navigates back to the previous screen.
///
/// This function takes a [BuildContext] object as a parameter, which is used
/// to navigate back to the previous screen.
onTapArrowleft17(BuildContext context) { Navigator.pop(context); } 
 }
