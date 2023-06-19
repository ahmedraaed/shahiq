import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:shahiq/core/app_export.dart';

class CustomSwitch extends StatelessWidget {
  CustomSwitch({this.alignment, this.margin, this.value, this.onChanged});

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  bool? value;

  Function(bool)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: _buildSwitchWidget(),
          )
        : _buildSwitchWidget();
  }

  _buildSwitchWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: FlutterSwitch(
        value: value ?? false,
        height: getHorizontalSize(20),
        width: getHorizontalSize(40),
        toggleSize: 20,
        borderRadius: getHorizontalSize(
          10.00,
        ),
        activeColor: ColorConstant.cyan600,
        activeToggleColor: ColorConstant.gray5003,
        inactiveColor: ColorConstant.gray30001,
        inactiveToggleColor: ColorConstant.gray5003,
        onToggle: (value) {
          onChanged!(value);
        },
      ),
    );
  }
}
