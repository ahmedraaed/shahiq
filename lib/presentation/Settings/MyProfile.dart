
import 'package:flutter/material.dart';
import 'package:shahiq/core/app_export.dart';
import 'package:table_calendar/table_calendar.dart';

class MyProfile extends StatefulWidget {
  const MyProfile({Key? key}) : super(key: key);

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  late final ValueNotifier<List<Event>> _selectedEvents;
  final kFirstDay = DateTime(DateTime.now().year, DateTime.now().month - 3, DateTime.now().day);
  final kLastDay = DateTime(DateTime.now().year, DateTime.now().month + 3, DateTime.now().day);
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  @override
  void initState() {
    super.initState();

    _selectedDay = _focusedDay;
    _selectedEvents = ValueNotifier(_getEventsForDay(_selectedDay!));
  }
  List<Event> _getEventsForDay(DateTime day) {
    // Implementation example
    List<Event> l=[];
    for(int i=0;i<1;i++){
      l.add(Event("i"));
    }
    return l;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray50,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Expanded(
                          child: SingleChildScrollView(
                              padding: getPadding(top: 40),
                              child: Padding(
                                  padding: getPadding(
                                      left: 20, right: 20, bottom: 122),
                                  child: Column(
                                      mainAxisAlignment:
                                      MainAxisAlignment.start,
                                      children: [
                                        CustomImageView(
                                            svgPath: ImageConstant
                                                .imgArrowleftBlueGray90018x10,
                                            height: getVerticalSize(18),
                                            width: getHorizontalSize(10),
                                            alignment: Alignment.centerLeft,
                                            onTap: () {
                                              onTapImgArrowleft(context);
                                            }),
                                        Padding(
                                            padding: getPadding(top: 4),
                                            child: Text("الملف الشخصي",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                AppStyle.txtJannaLTBold24)),
                                        Card(
                                            clipBehavior: Clip.antiAlias,
                                            elevation: 0,
                                            margin: getMargin(top: 29),
                                            color: ColorConstant.lightBlue5087,
                                            shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadiusStyle
                                                    .circleBorder42),
                                            child: Container(
                                                height: getSize(84),
                                                width: getSize(84),
                                                padding: getPadding(all: 7),
                                                decoration: AppDecoration
                                                    .fillLightblue5087
                                                    .copyWith(
                                                    borderRadius:
                                                    BorderRadiusStyle
                                                        .circleBorder42),
                                                child: Stack(children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgElmmedcardoval,
                                                      height: getSize(69),
                                                      width: getSize(69),
                                                      radius:
                                                      BorderRadius.circular(
                                                          getHorizontalSize(
                                                              34)),
                                                      alignment:
                                                      Alignment.center)
                                                ]))),
                                        Container(
                                            height: getVerticalSize(59),
                                            width: getHorizontalSize(186),
                                            margin: getMargin(top: 7),
                                            child: Stack(
                                                alignment:
                                                Alignment.bottomCenter,
                                                children: [
                                                  Align(
                                                      alignment:
                                                      Alignment.topCenter,
                                                      child: SizedBox(
                                                          width:
                                                          getHorizontalSize(
                                                              92),
                                                          child: Text(
                                                              "كريم اسامة",
                                                              maxLines: null,
                                                              textAlign:
                                                              TextAlign
                                                                  .center,
                                                              style: AppStyle
                                                                  .txtJannaLTBold20))),
                                                  Align(
                                                      alignment: Alignment
                                                          .bottomCenter,
                                                      child: Text(
                                                          "kareemosama@icloud.com",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                          TextAlign.left,
                                                          style: AppStyle
                                                              .txtJannaLTRegular16))
                                                ])),
                                        CustomImageView(
                                            svgPath: ImageConstant.imgLink,
                                            height: getSize(16),
                                            width: getSize(16),
                                            margin: getMargin(top: 3),
                                            onTap: () {
                                              onTapImgLink(context);
                                            }),
                                        Container(
                                            margin: getMargin(top: 24),
                                            decoration: AppDecoration
                                                .fillWhiteA700
                                                .copyWith(
                                                borderRadius:
                                                BorderRadiusStyle
                                                    .roundedBorder14),
                                            child: Row(
                                                mainAxisAlignment:
                                                MainAxisAlignment.end,
                                                children: [
                                                  Card(
                                                      clipBehavior:
                                                      Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: getMargin(left: 14),
                                                      color: ColorConstant.indigo90001,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadiusStyle.customBorderLR14),
                                                      child: Container(
                                                          height: getVerticalSize(83),
                                                          width: getHorizontalSize(48),
                                                          padding: getPadding(left: 12, top: 28, right: 12, bottom: 28),
                                                          decoration: AppDecoration.fillIndigo90001.copyWith(
                                                              borderRadius: BorderRadiusStyle.customBorderLR14),
                                                          child:
                                                          Stack(children: [
                                                            CustomImageView(
                                                                svgPath: ImageConstant.imgGrid,
                                                                height: getSize(24),
                                                                width: getSize(24),
                                                                alignment: Alignment.bottomCenter)
                                                          ]))),
                                                  Container(
                                                      height:
                                                      getVerticalSize(56),
                                                      width: getHorizontalSize(176),
                                                      margin: getMargin(top: 14, bottom: 11),
                                                      child: Stack(
                                                          alignment: Alignment.bottomCenter,
                                                          children: [
                                                            Align(
                                                                alignment: Alignment
                                                                    .topRight,
                                                                child: SizedBox(
                                                                    width:
                                                                    getHorizontalSize(
                                                                        78),
                                                                    child: Text(
                                                                        "خطة الاشتراك",
                                                                        maxLines:
                                                                        null,
                                                                        textAlign:
                                                                        TextAlign
                                                                            .right,
                                                                        style: AppStyle
                                                                            .txtJannaLTRegular14Bluegray20003))),
                                                            Align(
                                                                alignment: Alignment
                                                                    .bottomCenter,
                                                                child: Text(
                                                                    "الحزمة السنوية لشهيق بلس ",
                                                                    overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                    textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                    style: AppStyle
                                                                        .txtJannaLTBold16Bluegray900))
                                                          ])),
                                                  Spacer(),
                                                  Container(
                                                      width:
                                                      getHorizontalSize(29),
                                                      margin: getMargin(
                                                          left: 18,
                                                          top: 44,
                                                          bottom: 15),
                                                      child: Text("مفعلة",
                                                          maxLines: null,
                                                          textAlign:
                                                          TextAlign.right,
                                                          style: AppStyle
                                                              .txtJannaLTRegular12Cyan400)),

                                                ])),
                                        //خطة الاشتراك
                                        Padding(
                                            padding: getPadding(top: 24),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.gray300)),
                                        //ماقمت بتحقيقة
                                        Container(
                                            margin: getMargin(top: 32),
                                            padding: getPadding(left: 18, top: 15, right: 18, bottom: 15),
                                            decoration: AppDecoration.fillWhiteA700.copyWith(
                                                borderRadius: BorderRadiusStyle.roundedBorder14),
                                            child: Row(
                                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                children: [
                                                  Padding(
                                                      padding:
                                                      getPadding(top: 3),
                                                      child: Column(
                                                          crossAxisAlignment: CrossAxisAlignment.start,
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          children: [
                                                            SizedBox(
                                                                width: getHorizontalSize(109),
                                                                child: Text(
                                                                    "ما قمت بتحقيقه !",
                                                                    maxLines: null,
                                                                    textAlign: TextAlign.right,
                                                                    style: AppStyle.txtJannaLTBold16Bluegray900)),
                                                            Container(
                                                                width:
                                                                getHorizontalSize(237),
                                                                margin:
                                                                getMargin(top: 1),
                                                                child: Text(
                                                                    "تعرف على المزيد حول كل ما حققته بالاسفل",
                                                                    maxLines: null,
                                                                    textAlign: TextAlign.right,
                                                                    style: AppStyle.txtJannaLTRegular14Bluegray20003))
                                                          ])),
                                                  Container(
                                                      margin: getMargin(top: 2, bottom: 2),
                                                      padding:
                                                      getPadding(all: 15),
                                                      decoration: AppDecoration.fillIndigo90001.copyWith(
                                                          borderRadius: BorderRadiusStyle.circleBorder29),
                                                      child: Column(
                                                          mainAxisSize: MainAxisSize.min,
                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                          children: [
                                                            Container(
                                                                height: getSize(28),
                                                                width: getSize(28),
                                                                decoration: AppDecoration.fillIndigo90001,
                                                                child: Stack(
                                                                    children: [
                                                                      CustomImageView(
                                                                          svgPath: ImageConstant.imgComputer,
                                                                          height: getSize(28),
                                                                          width: getSize(28),
                                                                          alignment: Alignment.center)
                                                                    ]))
                                                          ])),

                                                ])),
                                        SizedBox(
                                            height: getVerticalSize(145),

                                            child: ListView.separated(
                                                padding: getPadding(
                                                    left: 1, top: 24,bottom: 5,),
                                                scrollDirection:
                                                Axis.horizontal,
                                                separatorBuilder: (context, index) {
                                                  return SizedBox(
                                                      height: getVerticalSize(12));
                                                },
                                                itemCount: 3,
                                                itemBuilder: (context, index) {
                                                  return IntrinsicWidth(
                                                    child: Container(
                                                      margin: getMargin(
                                                        right: 12,

                                                      ),
                                                      padding: getPadding(
                                                        left: 36,
                                                        top: 16,
                                                        right: 36,
                                                        bottom: 16,
                                                      ),
                                                      decoration: AppDecoration.outlineBlack9003f1.copyWith(
                                                        borderRadius: BorderRadiusStyle.roundedBorder14,
                                                      ),
                                                      child: Column(
                                                        mainAxisSize: MainAxisSize.min,
                                                        mainAxisAlignment: MainAxisAlignment.center,
                                                        children: [
                                                          CustomImageView(
                                                            svgPath: ImageConstant.imgCalendar,
                                                            height: getSize(24,),
                                                            width: getSize(24,),
                                                          ),
                                                          Container(
                                                            margin: getMargin(
                                                              top: 12,
                                                            ),
                                                            child: Text(
                                                              "112 دقيقة",
                                                              maxLines: null,
                                                              textAlign: TextAlign.center,
                                                              style: AppStyle.txtJannaLTBold14IndigoA20001,
                                                            ),
                                                          ),
                                                          Container(
                                                            margin: getMargin(bottom: 2,),
                                                            child: Text(
                                                              "اوقات التأمل",
                                                              maxLines: null,
                                                              textAlign: TextAlign.center,
                                                              style: AppStyle.txtJannaLTRegular12Bluegray20003,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  );
                                                })),

                                        TableCalendar<Event>(
                                          firstDay: kFirstDay,
                                          lastDay: kLastDay,
                                          focusedDay: _focusedDay,
                                          selectedDayPredicate: (day) => isSameDay(_selectedDay, day),
                                          calendarFormat: _calendarFormat,
                                          eventLoader: _getEventsForDay,
                                          startingDayOfWeek: StartingDayOfWeek.monday,
                                          calendarStyle: CalendarStyle(
                                            // Use `CalendarStyle` to customize the UI
                                            outsideDaysVisible: false,
                                          ),
                                          headerStyle: const HeaderStyle(
                                            //titleCentered: true,
                                            //formatButtonVisible: false,

                                          ),
                                          onDaySelected: _onDaySelected,
                                          onFormatChanged: (format) {
                                            if (_calendarFormat != format) {
                                              setState(() {
                                                _calendarFormat = format;
                                              });
                                            }
                                          },
                                          onPageChanged: (focusedDay) {
                                            _focusedDay = focusedDay;
                                          },
                                        ),
                                        SizedBox(
                                          height: getVerticalSize(20),
                                        ),
                                      ]))))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
  onTapImgLink(BuildContext context) {
    //Navigator.pushNamed(context, AppRoutes.editProfileScreen);
  }

  void _onDaySelected(DateTime selectedDay, DateTime focusedDay) {
    if (!isSameDay(_selectedDay, selectedDay)) {
      setState(() {
        _selectedDay = selectedDay;
        _focusedDay = focusedDay;
      });

      _selectedEvents.value = _getEventsForDay(selectedDay);
    }
  }


}

class Event {
  final String title;

  const Event(this.title);

  @override
  String toString() => title;
}