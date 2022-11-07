import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../component/tab_bar_views.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF131015),
      appBar: AppBar(
        elevation: 40.0,
        backgroundColor: const Color(0xFF131015),
        title: Text(
          'Resume App',
          style: GoogleFonts.roboto(
            fontSize: 20.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
      ),
      body: const TabBarViews(),
    );
  }
}