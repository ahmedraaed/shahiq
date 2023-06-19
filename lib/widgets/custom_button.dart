import 'package:flutter/material.dart';
import 'package:shahiq/core/app_export.dart';

class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingT13:
        return getPadding(
          top: 13,
          right: 13,
          bottom: 13,
        );
      case ButtonPadding.PaddingAll4:
        return getPadding(
          all: 4,
        );
      case ButtonPadding.PaddingAll8:
        return getPadding(
          all: 8,
        );
      case ButtonPadding.PaddingT7:
        return getPadding(
          left: 7,
          top: 7,
          bottom: 7,
        );
      default:
        return getPadding(
          all: 13,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.FillGray5033:
        return ColorConstant.gray5033;
      case ButtonVariant.FillWhiteA70033:
        return ColorConstant.whiteA70033;
      case ButtonVariant.FillWhiteA700:
        return ColorConstant.whiteA700;
      case ButtonVariant.FillBluegray50:
        return ColorConstant.blueGray50;
      case ButtonVariant.OutlineGray300:
      case ButtonVariant.OutlineCyan600:
        return null;
      default:
        return ColorConstant.indigo90001;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineGray300:
        return BorderSide(
          color: ColorConstant.gray300,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineCyan600:
        return BorderSide(
          color: ColorConstant.cyan600,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.FillIndigo90001:
      case ButtonVariant.FillGray5033:
      case ButtonVariant.FillWhiteA70033:
      case ButtonVariant.FillWhiteA700:
      case ButtonVariant.FillBluegray50:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            12.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.JannaLTRegular16:
        return TextStyle(
          color: ColorConstant.blueGray900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Janna LT',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.JannaLTRegular14:
        return TextStyle(
          color: ColorConstant.blueGray200,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Janna LT',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.JannaLTBold14:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Janna LT',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.JannaLTRegular14WhiteA700:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Janna LT',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.JannaLTRegular14Cyan600:
        return TextStyle(
          color: ColorConstant.cyan600,
          fontSize: getFontSize(
            14,
          ),
          fontFamily: 'Janna LT',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.JannaLTBold16Cyan600:
        return TextStyle(
          color: ColorConstant.cyan600,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Janna LT',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.JannaLTBold16Bluegray900:
        return TextStyle(
          color: ColorConstant.blueGray900,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Janna LT',
          fontWeight: FontWeight.w700,
        );
      case ButtonFontStyle.JannaLTBold16Bluegray200:
        return TextStyle(
          color: ColorConstant.blueGray200,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Janna LT',
          fontWeight: FontWeight.w700,
        );
      default:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Janna LT',
          fontWeight: FontWeight.w700,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder12,
}
enum ButtonPadding {
  PaddingAll13,
  PaddingT13,
  PaddingAll4,
  PaddingAll8,
  PaddingT7,
}
enum ButtonVariant {
  FillIndigo90001,
  OutlineGray300,
  FillGray5033,
  FillWhiteA70033,
  OutlineCyan600,
  FillWhiteA700,
  FillBluegray50,
}
enum ButtonFontStyle {
  JannaLTBold16,
  JannaLTRegular16,
  JannaLTRegular14,
  JannaLTBold14,
  JannaLTRegular14WhiteA700,
  JannaLTRegular14Cyan600,
  JannaLTBold16Cyan600,
  JannaLTBold16Bluegray900,
  JannaLTBold16Bluegray200,
}
