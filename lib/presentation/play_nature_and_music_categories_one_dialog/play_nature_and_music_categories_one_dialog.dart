import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shahiq/core/app_export.dart';
import 'package:shahiq/widgets/custom_button.dart';

class PlayNatureAndMusicCategoriesOneDialog extends StatelessWidget {
   PlayNatureAndMusicCategoriesOneDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
        padding: getPadding(left: 19, top: 14, right: 19, bottom: 14),
        decoration: AppDecoration.fillWhiteA700
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child: SingleChildScrollView(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Align(
                 alignment: AlignmentDirectional.centerEnd,
                  child: CustomImageView(
                      svgPath: ImageConstant.imgClose,
                      height: getSize(32),
                      width: getSize(32),
                      onTap: () {
                        onTapImgClose(context);
                      }),
                ),
                Text("دون افكارك",
                    overflow: TextOverflow.ellipsis,
                    style: AppStyle.txtJannaLTBold24),
                SizedBox(
                    width: getHorizontalSize(272),
                    child: Text(
                        "احتفظ بأفكارك الثمينة ودوّنها، فقدرتك على تأملها تعزز من قوة تجربتك.",
                        textAlign: TextAlign.center,
                        style: AppStyle.txtJannaLTRegular16Bluegray200
                            .copyWith(
                                letterSpacing:
                                    getHorizontalSize(0.76)))),
                SizedBox(height: 20.h,),

                TextFormField(
                 maxLines: 4,

                 decoration: InputDecoration(
                   hintStyle: AppStyle.txtJannaLTRegular14Bluegray200
                       .copyWith(
                       letterSpacing:
                       getHorizontalSize(0.76)),
                  hintText: "ابدأ في تدوين افكارك",
                  prefixIcon:CustomImageView(
                      svgPath: ImageConstant.imgForwardBlueGray300,
                      height: getSize(24),
                      width: getSize(24),
                      margin: getMargin(left: 8, bottom: 95)),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: BorderSide(
                      color: ColorConstant.gray300,
                      width: 0
                    )
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      borderSide: BorderSide(
                          color: ColorConstant.gray300,
                          width: 0
                      )
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      borderSide: BorderSide(
                          color: ColorConstant.gray300,
                          width: 0
                      )
                  ),
                  errorBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.r),
                      borderSide: BorderSide(
                          color: ColorConstant.gray300,
                          width: 0
                      )
                  ),

                  fillColor: ColorConstant.gray300,
                  hoverColor: ColorConstant.gray300,
                  filled: true,

                 ),
                ),
                CustomButton(
                    height: getVerticalSize(56),
                    text: "الاضافة الي تدويناتك",
                    margin: getMargin(left: 13, top: 44, right: 13, bottom: 18),
                    onTap: () {
                      onTaptf(context);
                    })
              ]),
        ));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgClose(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the playMusicScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the playMusicScreen.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.playMusicScreen);
  }
}
