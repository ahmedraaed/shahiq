import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/utils/color_constant.dart';
import '../../../../core/utils/image_constant.dart';
import '../../../../core/utils/size_utils.dart';
import '../../../../theme/app_style.dart';
import '../../../widgets/custom_icon_button.dart';
import '../../../widgets/custom_image_view.dart';
import '../model/on_boarding_model.dart';

class OnBoardingScreen extends StatefulWidget {
  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  PageController pagecontroller = PageController(viewportFraction: 0.7);

  int pageCount = 0;
  var _currentPage = 0.0;
  double _scalefactor = 0.8;
  double _height = 200.h;


  List<String> image=[
    '${ImageConstant.imgPhoto}',
    '${ImageConstant.imgPhoto323x230}',
    '${ImageConstant.imgPhoto1}'
  ];

  List<OnBoardingBody> listbody = [
    OnBoardingBody(
        "لنبدأ بتجربة فريدة تنقلك إلى عالم التأمل والسلام الداخلي",
        'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص'),
    OnBoardingBody(
        " احظي بلحظات هادئة وصفاء في كل خطوة",
        'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص '),
    OnBoardingBody(
        "استعد لاستكشاف مجموعة متنوعة من التأملات والموارد المهدئة",
        'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص '),
  ];

  List<bool> selectIndecitor=[false,true,false];


  @override
  void initState() {
    super.initState();
    pagecontroller.addListener(() {
      setState(() {
        _currentPage = pagecontroller.page!;
        // print(Dimensions.widthScreen);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsetsDirectional.only(top: 53.h),
                child: SingleChildScrollView(
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Container(
                          alignment: AlignmentDirectional.topStart,
                          padding: EdgeInsetsDirectional.only(start: 28.w),
                          child: GestureDetector(
                              onTap: () {
                                // Navigator.pushNamedAndRemoveUntil(context, AppRoutes.authentication, (route) => false);
                              },
                              child: Text("تخطئ",
                                  overflow: TextOverflow.ellipsis,
                                  style: AppStyle.txtJannaLTRegular14.copyWith(
                                      letterSpacing: getHorizontalSize(0.2)))),
                        ),
                        Container(
                          height: 300.h,
                          child: PageView.builder(

                            reverse: true,
                            onPageChanged: (index) {
                              setState(() {
                                pageCount = index;
                              });
                              print(pageCount);
                            },
                            controller: pagecontroller,
                            itemBuilder: (context, index) =>_buildpageItem(index, image[index]),
                                // onBoarding(image: image[index]),
                            itemCount: image.length,
                          ),
                        ),

                        Body(
                            title:listbody[pageCount].title,
                            body:listbody[pageCount].body
                        ),
                        SizedBox(height: 20.h,),


                        Directionality(
                          textDirection: TextDirection.ltr,
                          child: Container(
                            height: 5.h,
                            width: 120.w,
                            decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(3.r),
                                color: ColorConstant.gray300
                            ),
                            child: Row(
                              children: [
                                for(int i=0;i<image.length;i++)
                                 ... {
                                    i == pageCount
                                        ? Container(
                                            height: 5.h,
                                            width: 40.w,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(3.r),
                                                color:
                                                    ColorConstant.indigoA20099),
                                          )
                                        : SizedBox(width: 40.w,),

                                  }
                              ],
                            ),
                          ),
                        ),

                        CustomIconButton(
                            height: 56.w,
                            width: 56.w,
                            margin: getMargin(top: 86.h,),
                            variant: IconButtonVariant.FillIndigo90001,
                            shape: IconButtonShape.CircleBorder28,
                            padding: IconButtonPadding.PaddingAll12,
                            onTap: () {
                              {
                                if (pageCount < 2)
                                  pagecontroller.nextPage(
                                      duration: Duration(milliseconds: 600),
                                      curve: Curves.easeIn);
                                else {
                                  // Navigator.pushNamedAndRemoveUntil(context, AppRoutes.authentication, (route) => false);
                                }
                                setState(() {});
                              }
                            },
                            child: CustomImageView(
                                svgPath: ImageConstant.imgArrowright)),

                        // CustomButton(
                        //     height: 50.h,
                        //     width: 240.w,
                        //     text: "التالي",
                        //     margin: EdgeInsetsDirectional.only(top: 40.h),
                        //     padding: ButtonPadding.PaddingAll13,
                        //     onTap: () {
                        //       if(pageCount<2)
                        //       pagecontroller.nextPage(duration: Duration(milliseconds: 600),
                        //           curve: Curves.easeIn);
                        //       else{
                        //         // Navigator.pushNamedAndRemoveUntil(context, AppRoutes.authentication, (route) => false);
                        //       }
                        //       setState(() {
                        //
                        //       });
                        //
                        //     }),
                      ]),
                ))));
  }

  Widget onBoarding({required String image}) => Container(
        // margin: EdgeInsets.only(left: 30.w, right: 30.w),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // SizedBox(height:100.h),
            CustomImageView(
                imagePath: image,
                width: 200.w,
                height: 200.h,
                radius: BorderRadius.circular(getHorizontalSize(14)),
                alignment: Alignment.center),

          ],
        ),
      );



  Widget Body({required String title,required String body}){
    return Container(
      margin: EdgeInsetsDirectional.only(
        end: 45.w, start: 45.w,),

      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(title,
                style: AppStyle.txtJannaLTBold24,
                textAlign: TextAlign.center,
              )),
          SizedBox(
            height: 20.h,
          ),
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.w),
              child: Text(body,
                style: AppStyle.txtJannaLTRegular14Bluegray20001
                    .copyWith(letterSpacing: getHorizontalSize(0.3)),
                textAlign: TextAlign.center,
              )),
        ],
      ),
    );
  }


  //////

  Widget _buildpageItem(int index,String image) {
    Matrix4 matrix = Matrix4.identity();
    if (index == _currentPage.floor()) {
      var scale = 1 - (_currentPage - index) * (1 - _scalefactor);
      var currentTransf = _height * (1 - scale) / 2;
      matrix = Matrix4.diagonal3Values(1, scale, 1)
        ..setTranslationRaw(0, currentTransf, 0);
    } else if (index == _currentPage.floor() + 1) {
      var scale =
          _scalefactor + (_currentPage - index + 1) * (1 - _scalefactor);
      var currentTransf = _height * (1 - scale) / 2;
      matrix = Matrix4.diagonal3Values(1, scale, 1)
        ..setTranslationRaw(0, currentTransf, 0);
    } else if (index == _currentPage.floor() - 1) {
      var scale = 1 - (_currentPage - index) * (1 - _scalefactor);
      var currentTransf = _height * (1 - scale) / 2;
      matrix = Matrix4.diagonal3Values(1, scale, 1)
        ..setTranslationRaw(0, currentTransf, 0);
    } else {
      var scale = 0.8;
      matrix = Matrix4.diagonal3Values(1, scale, 1)
        ..setTranslationRaw(0, _height * (1 - _scalefactor) / 2, 1);
    }

    return Transform(
      transform: matrix,
      child: onBoarding(image: image),
    );
  }



  //////
}
