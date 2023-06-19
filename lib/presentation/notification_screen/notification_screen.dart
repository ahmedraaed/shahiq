import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../notification_screen/widgets/notification_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:shahiq/core/app_export.dart';
import 'package:shahiq/widgets/app_bar/appbar_image.dart';
import 'package:shahiq/widgets/app_bar/appbar_title.dart';
import 'package:shahiq/widgets/app_bar/custom_app_bar.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: 60.h,
                leadingWidth: 30.w,
                actions:[AppbarImage(
                    height: getVerticalSize(18),
                    width: getHorizontalSize(10),
                    svgPath: ImageConstant.imgArrowleftBlueGray90018x10,
                    margin: getMargin(left: 20, top: 4, bottom: 33),
                    onTap: () {
                      onTapArrowleft(context);
                    }),],
                centerTitle: true,
                title: AppbarTitle(text: "الاشعارات")),
            body: Padding(
                padding: getPadding(left: 20, top: 41),
                child: ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: getVerticalSize(16));
                    },
                    itemCount: 4,
                    itemBuilder: (context, index) {
                      return NotificationItemWidget();
                    }))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
