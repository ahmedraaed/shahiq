import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shahiq/core/app_export.dart';

// ignore: must_be_immutable
class NotificationItemWidget extends StatelessWidget {
  const NotificationItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: getMargin(
        right: 20,
      ),
      padding:EdgeInsetsDirectional.only(end: 15.w,top: 10.h,bottom: 10.h),
      decoration: AppDecoration.fillWhiteA700.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder14,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse79,
            height: getVerticalSize(
              60,
            ),
          ),
          SizedBox(width: 10.w,),
          Container(
            height: getVerticalSize(
              46,
            ),
            width: getHorizontalSize(
              277,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "القي نظرة علي الجلسات الجديدة !",
                  overflow: TextOverflow.ellipsis,
                  style: AppStyle.txtJannaLTBold14Bluegray900,
                ),
                Text(
                  "هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة",
                  overflow: TextOverflow.ellipsis,
                  style: AppStyle.txtJannaLTRegular12Bluegray20003,
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              top: 5,
              bottom: 26,
            ),
            child: Text(
              "12:20 ص",
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.left,
              style: AppStyle.txtJannaLTRegular10,
            ),
          ),

        ],
      ),
    );
  }
}
