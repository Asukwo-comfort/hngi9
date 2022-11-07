import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../screens/education.dart';
import '../screens/experience.dart';
import '../screens/profile.dart';


class TabBarViews extends StatefulWidget {
  const TabBarViews({Key? key}) : super(key: key);

  @override
  State<TabBarViews> createState() => _TabBarViewsState();
}

class _TabBarViewsState extends State<TabBarViews>
    with SingleTickerProviderStateMixin {
  late MyTabs _myHandler;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _myHandler = _tabs[0];
    _tabController.addListener(handleSelected);
  }

  void handleSelected() {
    setState(() {
      _myHandler = _tabs[_tabController.index];
    });
  }

  late TabController _tabController;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.w, right: 20.w, top: 30.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            _myHandler.title,
            style: GoogleFonts.roboto(
              fontSize: 28.sp,
              fontWeight: FontWeight.w700,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 20),
          SizedBox(
            child: Stack(
              children: [
                TabBar(
                  isScrollable: false,
                  controller: _tabController,
                  labelColor: Colors.white,
                  labelStyle: GoogleFonts.poppins(
                    fontSize: MediaQuery.of(context).size.width / 29.5,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                  unselectedLabelStyle: GoogleFonts.poppins(
                    fontSize: 15.5.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                  unselectedLabelColor: Colors.white,
                  labelPadding: EdgeInsets.zero,
                  indicatorPadding: EdgeInsets.zero,
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                    color: const Color.fromRGBO(31, 30, 37, 0.8),
                  ),
                  tabs: [
                    Tab(
                      text: 'About Me',
                      icon: Icon(
                        Icons.person_outline_outlined,
                        size: 30.sp,
                      ),
                    ),
                    Tab(
                      text: 'Experience',
                      icon: Icon(
                        Icons.work_outline,
                        size: 30.sp,
                      ),
                    ),
                    Tab(
                      text: 'Education',
                      icon: Icon(
                        Icons.history_edu_outlined,
                        size: 30.sp,
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Divider(
            color: const Color(0xFF1F1E25),
            thickness: 2.h,
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                AboutMe(),
                Experience(),
                Education(),
              ],
            ),
          )
        ],
      ),
    );
  }
}

final List<MyTabs> _tabs = [
  MyTabs(title: "About Me"),
  MyTabs(title: "Experience"),
  MyTabs(title: "Education")
];

class MyTabs {
  final String title;
  MyTabs({required this.title});
}