import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shahiq/core/app_export.dart';
import 'package:shahiq/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class PlaylistItemWidget extends StatelessWidget {
  PlaylistItemWidget({
    Key? key,
    this.onTapRowclock,
  }) : super(
          key: key,
        );

  VoidCallback? onTapRowclock;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapRowclock?.call();
      },
      child: Container(
        padding: getPadding(
          all: 14,
        ),
        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder14,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CustomIconButton(
              height: 40.h,
              width: 42.w,
              shape: IconButtonShape.CircleBorder24,
              padding: IconButtonPadding.PaddingAll9,
              child: CustomImageView(
                svgPath: ImageConstant.imgPlay,
              ),
            ),
            SizedBox(width: 10.w,),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "الاسترخاء التام",

                  style: AppStyle.txtJannaLTBold14Black900,
                ),
                SizedBox(height: 2.h),
                Text(
                  "اول يوم - 48 دقيقة",
                  style: AppStyle.txtJannaLTRegular12Bluegray20003,
                ),
              ],
            ),
            Spacer(),
            CustomImageView(
              svgPath: ImageConstant.imgArrowdownBlueGray10001,
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),
            ),
            SizedBox(width: 5.w,),

            CustomImageView(
              svgPath: ImageConstant.imgClockBlueGray10001,
              height: getSize(
                24,
              ),
              width: getSize(
                24,
              ),

            ),
          ],
        ),
      ),
    );
  }
}
