
import 'package:flutter/material.dart';
import 'package:shahiq/core/app_export.dart';
import 'package:shahiq/widgets/app_bar/appbar_image.dart';
import 'package:shahiq/widgets/app_bar/appbar_title.dart';
import 'package:shahiq/widgets/app_bar/custom_app_bar.dart';
import 'package:shahiq/widgets/custom_icon_button.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  State<Favourite> createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            appBar: CustomAppBar(
                height: getVerticalSize(56),
                leadingWidth: 0,
                leading:  null,
                centerTitle: true,
                title: AppbarTitle(
                    text: "المفضلات",
                    margin: getMargin(top: 17),
                ),
              actions: [
                AppbarImage(
                    height: getSize(15),
                    width: getSize(15),
                    svgPath: ImageConstant.imgArrowleftBlueGray90018x10,
                    margin: getMargin(top: 17,left: 17,  bottom: 0))
              ],
            ),
            body: Padding(
                padding: getPadding(left: 20, top: 44, right: 19),
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(197),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(15),
                        crossAxisSpacing: getHorizontalSize(15)),
                    physics: BouncingScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return SizedBox(
                        height: getVerticalSize(196,),
                        width: getHorizontalSize(186,),
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: getVerticalSize(196,),
                                width: getHorizontalSize(186,),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant.imgRectangle6258196x186,
                                      height: getVerticalSize(196,),
                                      width: getHorizontalSize(186,),
                                      radius: BorderRadius.circular(
                                        getHorizontalSize(14,),
                                      ),
                                      alignment: Alignment.center,
                                    ),
                                    Align(
                                      alignment: Alignment.center,
                                      child: Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: EdgeInsets.all(0),
                                        color: ColorConstant.black9000c,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadiusStyle.roundedBorder14,
                                        ),
                                        child: Container(
                                          height: getVerticalSize(196,),
                                          width: getHorizontalSize(186,),
                                          padding: getPadding(
                                            left: 12,
                                            top: 11,
                                            right: 12,
                                            bottom: 11,
                                          ),
                                          decoration: AppDecoration.fillBlack9000c.copyWith(
                                            borderRadius: BorderRadiusStyle.roundedBorder14,
                                          ),
                                          child: Stack(
                                            children: [
                                              CustomIconButton(
                                                height: 27,
                                                width: 27,
                                                variant: IconButtonVariant.FillBluegray10066,
                                                shape: IconButtonShape.RoundedBorder6,
                                                alignment: Alignment.topRight,
                                                child: CustomImageView(
                                                  svgPath: ImageConstant.imgLocationPink300,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                padding: getPadding(
                                  left: 55,
                                  top: 6,
                                  right: 55,
                                  bottom: 6,
                                ),
                                decoration:BoxDecoration(
                                  color: Colors.grey.withOpacity(0.9),
                                  borderRadius: BorderRadiusStyle.roundedBorder14,
                                ),
                                child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: getHorizontalSize(81,),
                                      margin: getMargin(top: 4,),
                                      child: Text(
                                        "الاسترخاء التام",
                                        maxLines: null,
                                        textAlign: TextAlign.center,
                                        style: AppStyle.txtJannaLTBold14,
                                      ),
                                    ),
                                    Text(
                                      "السلام النفسى",
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: AppStyle.txtJannaLTRegular12WhiteA700,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }))));
  }

  onTapArrowleft7(BuildContext context) {
    Navigator.pop(context);
  }
}
