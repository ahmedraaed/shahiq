import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shahiq/core/app_export.dart';
import 'package:shahiq/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class HomeItemWidget extends StatelessWidget {
  HomeItemWidget({
    Key? key,
    this.onTapImgUnsplashndn00km,
  }) : super(
          key: key,
        );

  VoidCallback? onTapImgUnsplashndn00km;

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Container(
        height: getVerticalSize(
          123,
        ),
        width: getHorizontalSize(
          318,
        ),
        margin:EdgeInsetsDirectional.only(start: 10.w),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgUnsplashndn00kmbj1c,
              height: getVerticalSize(
                123,
              ),
              width: getHorizontalSize(
                318,
              ),
              radius: BorderRadius.circular(
                getHorizontalSize(
                  14,
                ),
              ),
              alignment: Alignment.center,
              onTap: () {
                onTapImgUnsplashndn00km?.call();
              },
            ),
            Align(
              alignment: Alignment.center,
              child: Container(
                decoration: AppDecoration.fillDeeporangeA10099.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder14,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Container(
                      height: getVerticalSize(
                        20,
                      ),
                      width: getHorizontalSize(
                        84,
                      ),
                      margin:EdgeInsetsDirectional.only(bottom: 15.h,start: 5.w,end: 3.w),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            12,
                          ),
                        ),
                      ),

                      child: Center(
                        child: Text(
                          "20 دقيقة",
                          overflow: TextOverflow.ellipsis,
                          style: AppStyle
                              .txtJannaLTRegular12Black900
                              .copyWith(
                            letterSpacing: getHorizontalSize(
                              0.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      width: getHorizontalSize(
                        84,
                      ),
                      margin: getMargin(
                        top: 79,
                        bottom: 20,
                      ),
                      padding: getPadding(
                        left: 18,
                        top: 1,
                        right: 18,
                        bottom: 1,
                      ),
                      decoration: AppDecoration.txtFillWhiteA7004c.copyWith(
                        borderRadius: BorderRadiusStyle.txtCircleBorder12,
                      ),
                      child: Text(
                        "37 جلسة",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: AppStyle.txtJannaLTRegular12WhiteA700.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.5,
                          ),
                        ),
                      ),
                    ),
                    Spacer(),


                    CustomIconButton(
                      height: 26.h,
                      width: 26.w,
                      margin:EdgeInsetsDirectional.only( end: 10.w,
                        bottom: 15.h,),
                      variant: IconButtonVariant.FillGray50,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgIconfillplay,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
