import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shahiq/core/app_export.dart';
import 'package:shahiq/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Home1ItemWidget extends StatelessWidget {
  Home1ItemWidget({
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
        decoration: AppDecoration.outlineBlack90019.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder14,
        ),
        child: Column(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgRectangle6248,
              height: getVerticalSize(
                101,
              ),
              width: MediaQuery.of(context).size.width,

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
            ),

            Container(
              padding: EdgeInsetsDirectional.only(start: 15.w,end: 15.w),

              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15.h,),
                  Text(
                    "التأمل",

                    style: AppStyle.txtJannaLTBold10,
                  ),
                  SizedBox(height: 8.h,),
                  Text(
                    "الاسترخاء التام",
                    style: AppStyle.txtJannaLTBold14Bluegray900,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: getHorizontalSize(
                          98,
                        ),
                        child: Text(
                          "20 جلسة - 48 دقيقة",
                          style: AppStyle.txtJannaLTRegular12,
                        ),
                      ),

                      CustomIconButton(
                        height: 26,
                        width: 26,
                        margin: getMargin(
                          top: 20,
                          bottom: 1,
                        ),
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
