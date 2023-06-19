import 'package:flutter/material.dart';
import 'package:shahiq/core/app_export.dart';
import 'package:shahiq/widgets/app_bar/appbar_image.dart';
import 'package:shahiq/widgets/app_bar/custom_app_bar.dart';

class SearchEmptyStateScreen extends StatelessWidget {
  const SearchEmptyStateScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ColorConstant.gray50,
        appBar: CustomAppBar(
          height: getVerticalSize(
            90,
          ),
          centerTitle: true,
          title: Row(
            children: [
              Padding(
                padding: getPadding(
                  top: 20,
                  bottom: 10,
                ),
                child: Text(
                  "الغاء",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtJannaLTRegular14.copyWith(
                    letterSpacing: getHorizontalSize(
                      0.5,
                    ),
                  ),
                ),
              ),
              Container(
                margin: getMargin(
                  left: 24,
                ),
                padding: getPadding(
                  left: 16,
                  top: 13,
                  right: 16,
                  bottom: 13,
                ),
                decoration: AppDecoration.outlineGray30001.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder14,
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: getPadding(
                        left: 157,
                        top: 4,
                      ),
                      child: Text(
                        "ادخل نص البحث",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style:
                            AppStyle.txtJannaLTRegular14Bluegray20001.copyWith(
                          letterSpacing: getHorizontalSize(
                            0.5,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 16,
                      ),
                      child: SizedBox(
                        height: getVerticalSize(
                          32,
                        ),
                        child: VerticalDivider(
                          width: getHorizontalSize(
                            1,
                          ),
                          thickness: getVerticalSize(
                            1,
                          ),
                          color: ColorConstant.gray300,
                          indent: getHorizontalSize(
                            4,
                          ),
                          endIndent: getHorizontalSize(
                            4,
                          ),
                        ),
                      ),
                    ),
                    AppbarImage(
                      height: getSize(
                        24,
                      ),
                      width: getSize(
                        24,
                      ),
                      svgPath: ImageConstant.imgContrast,
                      margin: getMargin(
                        left: 15,
                        top: 4,
                        bottom: 4,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          styleType: Style.bgOutlineGray30001,
        ),
        body: Container(
          width: double.maxFinite,
          padding: getPadding(
            top: 191,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgCar,
                height: getSize(
                  40,
                ),
                width: getSize(
                  40,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 9,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      svgPath: ImageConstant.imgLocationBlueGray10002,
                      height: getSize(
                        40,
                      ),
                      width: getSize(
                        40,
                      ),
                      margin: getMargin(
                        bottom: 40,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgMusic,
                      height: getSize(
                        40,
                      ),
                      width: getSize(
                        40,
                      ),
                      margin: getMargin(
                        left: 6,
                        top: 40,
                      ),
                    ),
                    CustomImageView(
                      svgPath: ImageConstant.imgPlayBlueGray10002,
                      height: getSize(
                        40,
                      ),
                      width: getSize(
                        40,
                      ),
                      margin: getMargin(
                        left: 9,
                        bottom: 40,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: getHorizontalSize(
                  279,
                ),
                margin: getMargin(
                  top: 26,
                ),
                child: Text(
                  "استكشف عمق روحك وابحث عن السلام الداخلي",
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtJannaLTBold18,
                ),
              ),
              Container(
                width: getHorizontalSize(
                  159,
                ),
                margin: getMargin(
                  bottom: 5,
                ),
                child: Text(
                  "ابحث عن ما تريد و لا تتردد في اكتشاف ما يدفعك للأمام.",
                  maxLines: null,
                  textAlign: TextAlign.center,
                  style: AppStyle.txtJannaLTRegular14Bluegray200,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
