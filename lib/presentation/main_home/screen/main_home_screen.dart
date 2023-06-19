import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import '../../../../core/utils/image_constant.dart';
import '../../../core/utils/color_constant.dart';
import '../../../core/utils/size_utils.dart';
import '../../../theme/app_style.dart';
import '../controller/main_homr_controller.dart';


class MainHomeScreen extends StatefulWidget {
  const MainHomeScreen({Key? key}) : super(key: key);

  @override
  State<MainHomeScreen> createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  late MainHomeController controller=context.read<MainHomeController>();

  @override
  Widget build(BuildContext context) {
    return  Selector<MainHomeController,int>(
      selector: (p0, p1) => p1.pageNumber,
      builder: (context, page, child) {
        return Scaffold(
          body:controller.body[page],
          bottomNavigationBar: BottomNavigationBar(

            selectedLabelStyle:  AppStyle.txtJannaLTBold14Indigo90002.copyWith(
              letterSpacing: getHorizontalSize(
                0.2,
              ),
              color: ColorConstant.indigo90002,
            ),
            unselectedLabelStyle: AppStyle.txtJannaLTRegular14Bluegray200.copyWith(
              letterSpacing: getHorizontalSize(
                0.2,
              ),
              color: ColorConstant.blueGray200,
            ),
            selectedItemColor: ColorConstant.indigo400 ,
            unselectedItemColor: Colors.black26 ,
            showUnselectedLabels: true,
            showSelectedLabels: true,
            onTap: (value) {
              controller.changePage(value);
            },
            currentIndex: page,
            items:[

              BottomNavigationBarItem(
                icon:page==0?SvgPicture.asset(ImageConstant.imgVideocamera):SvgPicture.asset(ImageConstant.imgSettingsBlueGray300),
                // SvgPicture.asset( ImageConstant.imgMegaphoneBlueGray400,),
                label: "الرئيسية",
              ),
              BottomNavigationBarItem(
                icon:page==1?SvgPicture.asset(ImageConstant.imgRefresh):SvgPicture.asset(ImageConstant.imgUserBlueGray300),

                // icon: SvgPicture.asset( ImageConstant.imgMenu),
                label: "استكشف",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person,size: 25.sp),

                // icon: SvgPicture.asset( ImageConstant.imgLocation),
                label: "شهيق بلس",
              ),
              BottomNavigationBarItem(
                icon:page==3?SvgPicture.asset(ImageConstant.imgSettingsIndigo90002):SvgPicture.asset(ImageConstant.imgSettings),

                // icon: Icon(Icons.,size: 25.sp),

                // icon: SvgPicture.asset(ImageConstant.imgSearch),
                label: "المزيد",
              ),
            ], ),
        );
      },
    );
  }
}
