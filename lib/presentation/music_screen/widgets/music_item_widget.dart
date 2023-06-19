import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shahiq/core/app_export.dart';

// ignore: must_be_immutable
class MusicItemWidget extends StatelessWidget {
  MusicItemWidget({
    Key? key,
    this.onTapStackplay,
  }) : super(
          key: key,
        );

  VoidCallback? onTapStackplay;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapStackplay?.call();
      },
      child: Container(
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(20.r,),
        ),
        height: getVerticalSize(
          213,
        ),
        width: getHorizontalSize(
          186,
        ),
        child: Stack(
          children: [
            PositionedDirectional(
              top: 0,
              child: CustomImageView(
                imagePath: ImageConstant.imgRectangle6258,
                height: getVerticalSize(
                  196,
                ),
                width: getHorizontalSize(
                  186,
                ),
                radius: BorderRadius.circular(20.r,),
              ),
            ),
            PositionedDirectional(
              bottom: 30.h,
              start: 30.w,
              child: Container(
                padding: getPadding(
                  left: 20,
                  top: 4,
                  right: 20,
                  bottom: 4,
                ),
                decoration: AppDecoration.fillGray5033.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder14,
                ),
                child: Text(
                  "الاسترخاء التام",
                  textAlign: TextAlign.center,
                  style: AppStyle.txtJannaLTBold14,
                ),
              ),
            ),

            PositionedDirectional(
              bottom: 0,
              start: 60.w,
              child: CustomImageView(
                svgPath: ImageConstant.imgPlayWhiteA700,
                height: getSize(
                  34,
                ),
                width: getSize(
                  34,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
