import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:rest_cafe/shared/components/components.dart';
import 'package:rest_cafe/shared/styles/colors.dart';

class HomeScreen extends StatelessWidget {
  var _searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0.sp),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: Text(
                    "التوصيل الى",
                    style: TextStyle(color: Color(0xffAEAEAE), fontSize: 12.sp),
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "1704 Diptul Glen",
                      style: TextStyle(color: color1, fontSize: 16.sp),
                    ),
                    SizedBox(width: 10.w),
                    Icon(Icons.keyboard_arrow_down_sharp,
                        color: Color(0xffAEAEAE)),
                    SizedBox(width: .43.sw),
                    Icon(Icons.circle_notifications, color: Color(0xffAEAEAE)),
                  ],
                ),
                SizedBox(height: 20.h),
                defaultFormField(
                    controller: _searchController,
                    type: TextInputType.name,
                    hint: "بحث عن متجر او منتج",
                    prefix: Icons.search,
                    color: color1),
                SizedBox(height: 20.h),
                Container(
                  height: 30.h,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: false,
                      itemBuilder: (context, index) => labolOfFristListView(
                            text: "المطاعم",
                            icon: FontAwesomeIcons.utensils,
                          ),
                      separatorBuilder: (context, index) =>
                          SizedBox(width: 10.w),
                      itemCount: 7),
                ),
                SizedBox(height: 10.h),
                // LabolOfSecondListView()
                Container(
                  height: .6.sh,
                  child: ListView.separated(
                      shrinkWrap: false,
                      itemBuilder: (context, index) => LabolOfSecondListView(),
                      separatorBuilder: (context, index) =>
                          SizedBox(width: 10.h),
                      itemCount: 10),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class LabolOfSecondListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120.h,
      decoration: BoxDecoration(
          border: Border.all(color: Color(0xffDADADA)),
          borderRadius: BorderRadius.circular(20.sp)),
      child: Padding(
        padding: EdgeInsets.all(8.0.sp),
        child: Row(
          children: [
            Container(
              height: 100.h,
              width: 90.w,
              decoration: BoxDecoration(
                  border: Border.all(color: Color(0xffDADADA)),
                  borderRadius: BorderRadius.circular(20.sp)),
              child: Image.asset("assets/images/mac.png"),
            ),
            SizedBox(width: 20.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("هارديز",
                    style: TextStyle(color: Colors.black, fontSize: 14.sp)),
                SizedBox(height: 10.h),
                Row(children: [
                  Icon(FontAwesomeIcons.utensils),
                  Text("ياباني",
                      style: TextStyle(color: Colors.black54, fontSize: 12.sp)),
                ]),
                SizedBox(height: 10.h),
                Row(
                  children: [
                    Icon(Icons.location_on_rounded),
                    Text("ياباني",
                        style:
                            TextStyle(color: Colors.black54, fontSize: 12.sp)),
                  ],
                ),
              ],
            ),
            SizedBox(width: 20.w),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Row(
                  children: [
                    Icon(Icons.access_time_outlined, color: color1),
                    Text("45 دقيقة",
                        style: TextStyle(color: Colors.black, fontSize: 14.sp)),
                  ],
                ),
                SizedBox(height: 11.h)
              ],
            ),
            Spacer(),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(children: [
                  Text("مفتوح",
                      style: TextStyle(color: Colors.black54, fontSize: 12.sp)),
                  Icon(Icons.circle, color: color1),
                ]),
                Spacer(),
                Container(
                  height: 30.h,
                  width: 60.w,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      shrinkWrap: false,
                      itemBuilder: (context, index) =>
                          Image.asset("assets/images/Type1Rest.png"),
                      separatorBuilder: (context, index) =>
                          SizedBox(width: 3.w),
                      itemCount: 3),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class labolOfFristListView extends StatelessWidget {
  final IconData? icon;
  final String text;

  const labolOfFristListView({Key? key, this.icon, required this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.h,
      width: 90.w,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.sp),
        color: color1,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white),
          SizedBox(width: 10.w),
          Text(
            text,
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
