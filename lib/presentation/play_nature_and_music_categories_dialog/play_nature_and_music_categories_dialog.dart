import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shahiq/core/app_export.dart';
import 'package:shahiq/widgets/custom_button.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class PlayNatureAndMusicCategoriesDialog extends StatefulWidget {
   PlayNatureAndMusicCategoriesDialog({Key? key}) : super(key: key);

  @override
  State<PlayNatureAndMusicCategoriesDialog> createState() => _PlayNatureAndMusicCategoriesDialogState();
}

class _PlayNatureAndMusicCategoriesDialogState extends State<PlayNatureAndMusicCategoriesDialog> {
  double _value=5.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300.h,
        width: getHorizontalSize(388),
        padding: getPadding(left: 19, top: 14, right: 19, bottom: 14),
        decoration: AppDecoration.fillWhiteA700
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder14),
        child: Column(
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
              Container(

                  margin: getMargin(top: 12),
                  child: Column(
                      children: [
                    Text("اضف الوقت",
                        overflow: TextOverflow.ellipsis,
                        style: AppStyle.txtJannaLTBold24),
                    Text(
                        "ادخل الوقت الذي تريد ان يتوقف الصوت عنده",
                        textAlign: TextAlign.center,
                        style: AppStyle.txtJannaLTRegular16Bluegray200
                            .copyWith(
                                letterSpacing:
                                    getHorizontalSize(0.76))),

                        SizedBox(height: 15.h,),
                        buildSliderTopLabel(context),
                  ])),
              // Padding(
              //     padding: getPadding(left: 13, right: 13),
              //     child: Row(
              //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //         children: [
              //           SizedBox(
              //               width: getHorizontalSize(62),
              //               child: Text("12 دقيقة",
              //                   maxLines: null,
              //                   textAlign: TextAlign.right,
              //                   style:
              //                       AppStyle.txtJannaLTRegular16Bluegray200)),
              //           SizedBox(
              //               width: getHorizontalSize(51),
              //               child: Text("9 دقائق",
              //                   maxLines: null,
              //                   textAlign: TextAlign.right,
              //                   style: AppStyle.txtJannaLTRegular16Cyan600)),
              //           SizedBox(
              //               width: getHorizontalSize(51),
              //               child: Text("6 دقائق",
              //                   maxLines: null,
              //                   textAlign: TextAlign.right,
              //                   style:
              //                       AppStyle.txtJannaLTRegular16Bluegray200)),
              //           SizedBox(
              //               width: getHorizontalSize(51),
              //               child: Text("3 دقائق",
              //                   maxLines: null,
              //                   textAlign: TextAlign.right,
              //                   style: AppStyle.txtJannaLTRegular16Bluegray200))
              //         ])),
              // CustomImageView(
              //     svgPath: ImageConstant.imgGroup13647,
              //     height: getVerticalSize(25),
              //     width: getHorizontalSize(324),
              //     margin: getMargin(top: 19)),
              CustomButton(
                  height: getVerticalSize(56),
                  text: "تأكيد",
                  margin: getMargin(left: 13, top: 44, right: 13, bottom: 18),
                  onTap: () {
                    onTaptf(context);
                  })
            ]));
  }

  double _currentRangeValues =5 ;

  Widget buildSliderTopLabel(context) {
    final labels = ['3', '6', '9', '12'];
    final double min = 3;
    final double max = 12;
    final divisions = 100;

    return Column(
      children: [
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: Utils.modelBuilder(
              labels,
                  (index, label) {
                final color = ColorConstant.gray300;

                return buildLabel(
                    label: label.toString(), color: color, width: 50);
              },
            ),
          ),
        ),

        Container(
          width: double.maxFinite,

          child: CupertinoSlider(

            activeColor: ColorConstant.indigoA200,
            thumbColor: ColorConstant.gray300,
            value: _currentRangeValues,
            min: min,
            max: max,
            divisions: divisions,
            onChanged: (value) => {

            setState(() {
              _currentRangeValues=value;
              print(value);
            })

            },
          ),
        ),
      ],
    );
  }

  Widget buildLabel({
    required String label,
    required double width,
    required Color color,
  }) =>
      Container(
        width: width,
        child: Text(
          label + " دقائق",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 11.sp,
            // fontFamily: "Din",
            fontWeight: FontWeight.w800,
          ).copyWith(color: color),
        ),
      );

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
class Utils {
  static List<Widget> modelBuilder<M>(
      List<M> models, Widget Function(int index, M model) builder) =>
      models
          .asMap()
          .map<int, Widget>(
              (index, model) => MapEntry(index, builder(index, model)))
          .values
          .toList();
}

