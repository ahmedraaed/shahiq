import 'package:flutter/material.dart';
import 'package:shahiq/core/app_export.dart';
import 'package:shahiq/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class PlayNatureDialog extends StatelessWidget {
  const PlayNatureDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: getPadding(
        left: 20,
        right: 20,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Spacer(),
          SizedBox(
            width: double.maxFinite,
            child: Container(
              padding: getPadding(
                left: 24,
                top: 10,
                right: 24,
                bottom: 10,
              ),
              decoration: AppDecoration.fillWhiteA700.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder14,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    width: getHorizontalSize(
                      134,
                    ),
                    child: Divider(
                      height: getVerticalSize(
                        5,
                      ),
                      thickness: getVerticalSize(
                        5,
                      ),
                      color: ColorConstant.blueGray900,
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 20,
                    ),
                    child: Text(
                      "اضف مزيج ",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtJannaLTBold24,
                    ),
                  ),
                  SizedBox(
                    width: getHorizontalSize(
                      236,
                    ),
                    child: Text(
                      "اختر الاصوات الذي تريد ان تمزجهم",
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtJannaLTRegular16Bluegray200.copyWith(
                        letterSpacing: getHorizontalSize(
                          0.76,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 26,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          margin: getMargin(
                            top: 4,
                          ),
                          padding: getPadding(
                            left: 20,
                            top: 1,
                            right: 20,
                            bottom: 1,
                          ),
                          decoration: AppDecoration.txtOutlineGray300.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "الوابل",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Bluegray200
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          margin: getMargin(
                            top: 4,
                          ),
                          padding: getPadding(
                            left: 22,
                            top: 1,
                            right: 22,
                            bottom: 1,
                          ),
                          decoration: AppDecoration.txtOutlineCyan6001.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "صخور",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Cyan600.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          margin: getMargin(
                            bottom: 4,
                          ),
                          padding: getPadding(
                            left: 20,
                            top: 1,
                            right: 20,
                            bottom: 1,
                          ),
                          decoration: AppDecoration.txtOutlineGray300.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "خفيف",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Bluegray200
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          margin: getMargin(
                            bottom: 4,
                          ),
                          padding: getPadding(
                            left: 17,
                            top: 2,
                            right: 17,
                            bottom: 2,
                          ),
                          decoration: AppDecoration.txtOutlineCyan6001.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "قطرات",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Cyan600.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          padding: getPadding(
                            left: 29,
                            top: 1,
                            right: 29,
                            bottom: 1,
                          ),
                          decoration: AppDecoration.txtOutlineCyan6001.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "ثلج",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Cyan600.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                        CustomButton(
                          height: getVerticalSize(
                            34,
                          ),
                          width: getHorizontalSize(
                            76,
                          ),
                          text: "تساقط",
                          variant: ButtonVariant.OutlineGray300,
                          padding: ButtonPadding.PaddingAll4,
                          fontStyle: ButtonFontStyle.JannaLTRegular14,
                        ),
                        CustomButton(
                          height: getVerticalSize(
                            34,
                          ),
                          width: getHorizontalSize(
                            76,
                          ),
                          text: "مظلة",
                          variant: ButtonVariant.OutlineCyan600,
                          padding: ButtonPadding.PaddingAll4,
                          fontStyle: ButtonFontStyle.JannaLTRegular14Cyan600,
                        ),
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          padding: getPadding(
                            left: 26,
                            top: 1,
                            right: 26,
                            bottom: 1,
                          ),
                          decoration: AppDecoration.txtOutlineGray300.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "غزير",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Bluegray200
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          margin: getMargin(
                            top: 4,
                          ),
                          padding: getPadding(
                            left: 20,
                            top: 1,
                            right: 20,
                            bottom: 1,
                          ),
                          decoration: AppDecoration.txtOutlineGray300.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "الوابل",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Bluegray200
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          margin: getMargin(
                            top: 4,
                          ),
                          padding: getPadding(
                            left: 22,
                            top: 1,
                            right: 22,
                            bottom: 1,
                          ),
                          decoration: AppDecoration.txtOutlineCyan6001.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "صخور",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Cyan600.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          margin: getMargin(
                            bottom: 4,
                          ),
                          padding: getPadding(
                            left: 20,
                            top: 1,
                            right: 20,
                            bottom: 1,
                          ),
                          decoration: AppDecoration.txtOutlineGray300.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "خفيف",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Bluegray200
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          margin: getMargin(
                            bottom: 4,
                          ),
                          padding: getPadding(
                            left: 17,
                            top: 2,
                            right: 17,
                            bottom: 2,
                          ),
                          decoration: AppDecoration.txtOutlineCyan6001.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "قطرات",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Cyan600.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          padding: getPadding(
                            left: 29,
                            top: 1,
                            right: 29,
                            bottom: 1,
                          ),
                          decoration: AppDecoration.txtOutlineCyan6001.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "ثلج",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Cyan600.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                        CustomButton(
                          height: getVerticalSize(
                            34,
                          ),
                          width: getHorizontalSize(
                            76,
                          ),
                          text: "تساقط",
                          variant: ButtonVariant.OutlineGray300,
                          padding: ButtonPadding.PaddingAll4,
                          fontStyle: ButtonFontStyle.JannaLTRegular14,
                        ),
                        CustomButton(
                          height: getVerticalSize(
                            34,
                          ),
                          width: getHorizontalSize(
                            76,
                          ),
                          text: "مظلة",
                          variant: ButtonVariant.OutlineCyan600,
                          padding: ButtonPadding.PaddingAll4,
                          fontStyle: ButtonFontStyle.JannaLTRegular14Cyan600,
                        ),
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          padding: getPadding(
                            left: 26,
                            top: 1,
                            right: 26,
                            bottom: 1,
                          ),
                          decoration: AppDecoration.txtOutlineGray300.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "غزير",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Bluegray200
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          margin: getMargin(
                            top: 4,
                          ),
                          padding: getPadding(
                            left: 20,
                            top: 1,
                            right: 20,
                            bottom: 1,
                          ),
                          decoration: AppDecoration.txtOutlineGray300.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "الوابل",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Bluegray200
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          margin: getMargin(
                            top: 4,
                          ),
                          padding: getPadding(
                            left: 22,
                            top: 1,
                            right: 22,
                            bottom: 1,
                          ),
                          decoration: AppDecoration.txtOutlineCyan6001.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "صخور",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Cyan600.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          margin: getMargin(
                            bottom: 4,
                          ),
                          padding: getPadding(
                            left: 20,
                            top: 1,
                            right: 20,
                            bottom: 1,
                          ),
                          decoration: AppDecoration.txtOutlineGray300.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "خفيف",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Bluegray200
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          margin: getMargin(
                            bottom: 4,
                          ),
                          padding: getPadding(
                            left: 17,
                            top: 2,
                            right: 17,
                            bottom: 2,
                          ),
                          decoration: AppDecoration.txtOutlineCyan6001.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "قطرات",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Cyan600.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          padding: getPadding(
                            left: 29,
                            top: 1,
                            right: 29,
                            bottom: 1,
                          ),
                          decoration: AppDecoration.txtOutlineCyan6001.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "ثلج",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Cyan600.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                        CustomButton(
                          height: getVerticalSize(
                            34,
                          ),
                          width: getHorizontalSize(
                            76,
                          ),
                          text: "تساقط",
                          variant: ButtonVariant.OutlineGray300,
                          padding: ButtonPadding.PaddingAll4,
                          fontStyle: ButtonFontStyle.JannaLTRegular14,
                        ),
                        CustomButton(
                          height: getVerticalSize(
                            34,
                          ),
                          width: getHorizontalSize(
                            76,
                          ),
                          text: "مظلة",
                          variant: ButtonVariant.OutlineCyan600,
                          padding: ButtonPadding.PaddingAll4,
                          fontStyle: ButtonFontStyle.JannaLTRegular14Cyan600,
                        ),
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          padding: getPadding(
                            left: 26,
                            top: 1,
                            right: 26,
                            bottom: 1,
                          ),
                          decoration: AppDecoration.txtOutlineGray300.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "غزير",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Bluegray200
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          margin: getMargin(
                            top: 4,
                          ),
                          padding: getPadding(
                            left: 20,
                            top: 1,
                            right: 20,
                            bottom: 1,
                          ),
                          decoration: AppDecoration.txtOutlineGray300.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "الوابل",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Bluegray200
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          margin: getMargin(
                            top: 4,
                          ),
                          padding: getPadding(
                            left: 22,
                            top: 1,
                            right: 22,
                            bottom: 1,
                          ),
                          decoration: AppDecoration.txtOutlineCyan6001.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "صخور",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Cyan600.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          margin: getMargin(
                            bottom: 4,
                          ),
                          padding: getPadding(
                            left: 20,
                            top: 1,
                            right: 20,
                            bottom: 1,
                          ),
                          decoration: AppDecoration.txtOutlineGray300.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "خفيف",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Bluegray200
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          margin: getMargin(
                            bottom: 4,
                          ),
                          padding: getPadding(
                            left: 17,
                            top: 2,
                            right: 17,
                            bottom: 2,
                          ),
                          decoration: AppDecoration.txtOutlineCyan6001.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "قطرات",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Cyan600.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      top: 12,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          padding: getPadding(
                            left: 29,
                            top: 1,
                            right: 29,
                            bottom: 1,
                          ),
                          decoration: AppDecoration.txtOutlineCyan6001.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "ثلج",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Cyan600.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                        CustomButton(
                          height: getVerticalSize(
                            34,
                          ),
                          width: getHorizontalSize(
                            76,
                          ),
                          text: "تساقط",
                          variant: ButtonVariant.OutlineGray300,
                          padding: ButtonPadding.PaddingAll4,
                          fontStyle: ButtonFontStyle.JannaLTRegular14,
                        ),
                        CustomButton(
                          height: getVerticalSize(
                            34,
                          ),
                          width: getHorizontalSize(
                            76,
                          ),
                          text: "مظلة",
                          variant: ButtonVariant.OutlineCyan600,
                          padding: ButtonPadding.PaddingAll4,
                          fontStyle: ButtonFontStyle.JannaLTRegular14Cyan600,
                        ),
                        Container(
                          width: getHorizontalSize(
                            76,
                          ),
                          padding: getPadding(
                            left: 26,
                            top: 1,
                            right: 26,
                            bottom: 1,
                          ),
                          decoration: AppDecoration.txtOutlineGray300.copyWith(
                            borderRadius: BorderRadiusStyle.txtCircleBorder12,
                          ),
                          child: Text(
                            "غزير",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtJannaLTRegular14Bluegray200
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.5,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  CustomButton(
                    height: getVerticalSize(
                      56,
                    ),
                    text: "احفظ المزيج",
                    margin: getMargin(
                      top: 32,
                      bottom: 14,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
