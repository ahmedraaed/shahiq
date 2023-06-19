import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shahiq/core/app_export.dart';
import 'package:shahiq/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class NatureItemWidget extends StatelessWidget {
  NatureItemWidget({
    Key? key,
    this.onTapColumnrectangle,
  }) : super(
          key: key,
        );

  VoidCallback? onTapColumnrectangle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapColumnrectangle?.call();
      },
      child: Container(

        decoration: AppDecoration.fillWhiteA700.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder14,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: getVerticalSize(
                101,
              ),
              width: getHorizontalSize(
                186,
              ),
              child: Stack(
                alignment: AlignmentDirectional.topStart,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle6252,
                    height: getVerticalSize(
                      101,
                    ),
                    width: getHorizontalSize(
                      186,
                    ),
                    radius: BorderRadius.only(
                      topLeft: Radius.circular(
                        getHorizontalSize(
                          14,
                        ),
                      ),
                      topRight: Radius.circular(
                        getHorizontalSize(
                          14,
                        ),
                      ),
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.topRight,
                    child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: getMargin(
                        top: 8,
                        right: 8,
                      ),
                      color: ColorConstant.black9004c,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadiusStyle.roundedBorder9,
                      ),
                      child: Container(
                        height: getSize(
                          19,
                        ),
                        width: getSize(
                          19,
                        ),
                        padding: getPadding(
                          all: 4,
                        ),
                        decoration: AppDecoration.fillBlack9004c.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder9,
                        ),
                        child: Stack(
                          children: [
                            CustomImageView(
                              svgPath: ImageConstant.imgLockWhiteA700,
                              height: getSize(
                                9,
                              ),
                              width: getSize(
                                9,
                              ),
                              alignment: Alignment.center,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10.h,),
            Container(
              padding: EdgeInsetsDirectional.only(start: 10.w,end: 10.w),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "المطر",
                    style: AppStyle.txtJannaLTBold14Bluegray900,
                  ),
                  SizedBox(height: 5.h,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "5 اصوات - 36 دقيقة",
                        style: AppStyle.txtJannaLTRegular12,
                      ),

                      CustomIconButton(
                        height: 26.h,
                        width: 26.w,
                        child: CustomImageView(
                          svgPath: ImageConstant.imgPlay,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
