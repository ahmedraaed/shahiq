import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shahiq/core/app_export.dart';
import 'package:shahiq/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class PlaylistnatureItemWidget extends StatelessWidget {
  PlaylistnatureItemWidget({
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
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CustomIconButton(
              height: 48,
              width: 48,
              shape: IconButtonShape.CircleBorder24,
              padding: IconButtonPadding.PaddingAll9,
              child: CustomImageView(
                svgPath: ImageConstant.imgPlay,
              ),
            ),
            SizedBox(width: 10.w,),
            Container(
              height: getVerticalSize(
                43,
              ),
              width: getHorizontalSize(
                45,
              ),
              margin: getMargin(
                top: 3,
                bottom: 1,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "خفيف",
                    style: AppStyle.txtJannaLTBold14Black900,
                  ),
                  Text(
                    " 48 دقيقة",
                    maxLines: null,
                    style: AppStyle.txtJannaLTRegular12Bluegray20003,
                  ),
                ],
              ),
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
