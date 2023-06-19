import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shahiq/core/app_export.dart';
import 'package:shahiq/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class MeditationItemWidget extends StatelessWidget {
  MeditationItemWidget({
    Key? key,
    this.onTapImgUnsplashndn00km,
  }) : super(
          key: key,
        );

  VoidCallback? onTapImgUnsplashndn00km;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapImgUnsplashndn00km,
      child: SizedBox(
        height: getVerticalSize(
          140,
        ),
        width: getHorizontalSize(
          388,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgUnsplashndn00kmbj1c123x318,
              height: getVerticalSize(
                140,
              ),
              width: getHorizontalSize(
                388,
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
            Container(
              height: getVerticalSize(
                140,
              ),
              width: getHorizontalSize(
                388,
              ),
              decoration: AppDecoration.fillIndigoA20099.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder14,
              ),

            ),
            PositionedDirectional(
              top: 20.h,
              start: 10.w,
              child: Padding(

                padding:  EdgeInsetsDirectional.only(start: 15.w,top: 15.h),
                child: Text(
                  "الاسترخاء",
                  style: AppStyle.txtJannaLTBold16,
                ),
              ),
            ),
            // SizedBox(height: 20.h,),
            PositionedDirectional(
              bottom:10.h,
              start: 15.w,
              child: Container(
                height: 30.h,
                width: 250.w,
                child: Row(
                  children: [
                    Container(

                      padding: EdgeInsetsDirectional.symmetric(horizontal: 10.h,vertical: 5.w),
                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA700,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            12,
                          ),
                        ),
                      ),
                      child:Text(
                        "20 دقيقة",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtJannaLTRegular12Black900
                            .copyWith(
                          letterSpacing: getHorizontalSize(
                            0.5,
                          ),
                        ),
                      ),

                    ),
                    SizedBox(width: 20.w,),
                    Container(
                      padding: EdgeInsetsDirectional.symmetric(horizontal: 10.h,vertical: 5.w),

                      decoration: BoxDecoration(
                        color: ColorConstant.whiteA7004c,
                        borderRadius: BorderRadius.circular(
                          getHorizontalSize(
                            12,
                          ),
                        ),
                      ),
                      child:Center(
                        child: Text(
                          "37 جلسة",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtJannaLTRegular12WhiteA700
                              .copyWith(
                            letterSpacing: getHorizontalSize(
                              0.5,
                            ),
                          ),
                        ),
                      ),
                    ),
                    Spacer(),
                    CustomIconButton(
                      height: 26.h,
                      width: 26.w,
                      variant: IconButtonVariant.FillWhiteA700,
                      child: CustomImageView(
                        svgPath: ImageConstant.imgIconfillplayIndigoA20002,
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
