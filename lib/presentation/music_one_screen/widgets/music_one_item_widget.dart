import 'package:flutter/material.dart';
import 'package:shahiq/core/app_export.dart';

// ignore: must_be_immutable
class MusicOneItemWidget extends StatelessWidget {
  MusicOneItemWidget({
    Key? key,
    this.onTapStackplay,
  }) : super(
          key: key,
        );

  VoidCallback? onTapStackplay;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapStackplay?.call();
      },
      child: SizedBox(
        height: getVerticalSize(
          213,
        ),
        width: getHorizontalSize(
          186,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: getVerticalSize(
                  196,
                ),
                width: getHorizontalSize(
                  186,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgRectangle6258,
                      height: getVerticalSize(
                        196,
                      ),
                      width: getHorizontalSize(
                        186,
                      ),
                      radius: BorderRadius.circular(
                        getHorizontalSize(
                          14,
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    Align(
                      alignment: Alignment.center,
                      child: Container(
                        padding: getPadding(
                          left: 14,
                          top: 31,
                          right: 14,
                          bottom: 31,
                        ),
                        decoration: AppDecoration.fillBlack9000c.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder14,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Container(
                              margin: getMargin(
                                top: 90,
                              ),
                              padding: getPadding(
                                left: 46,
                                top: 4,
                                right: 46,
                                bottom: 4,
                              ),
                              decoration: AppDecoration.fillGray5033.copyWith(
                                borderRadius: BorderRadiusStyle.roundedBorder14,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: getHorizontalSize(
                                      64,
                                    ),
                                    margin: getMargin(
                                      top: 7,
                                    ),
                                    child: Text(
                                      "",
                                      maxLines: null,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtJannaLTBold14,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              svgPath: ImageConstant.imgPlayWhiteA700,
              height: getSize(
                34,
              ),
              width: getSize(
                34,
              ),
              alignment: Alignment.bottomCenter,
            ),
          ],
        ),
      ),
    );
  }
}
