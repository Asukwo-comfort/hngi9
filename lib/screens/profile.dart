import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';



class AboutMe extends StatelessWidget {
  const AboutMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
      shrinkWrap: true,
      children: [
        Row(
          children: [
            CircleAvatar(
              backgroundImage: const AssetImage('lib/images/Kulex.jpg'),
              radius: 50.r,
            ),
            SizedBox(width: 15.w),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Comfort Effiong Asukwo",
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Android Developer",
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
                Text(
                  "Kulex",
                  style: GoogleFonts.poppins(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.w700,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
        SizedBox(height: 20.h),
        AboutMeContainerWidget(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About me",
                style: GoogleFonts.roboto(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                "An energetic and imaginative young android developer who is able to work alongside other talented IT professionals in creating mobile applications to the very highest standards. She is an ambitious type who wants to get noticed, and has the drive and massive energy needed to really make a difference to a project. Comprehensive knowledge of HTML, CSS, Kotlin and version control. Creating mobile application that are userfriendly, effective and appealing",
                style: GoogleFonts.roboto(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
                textAlign: TextAlign.justify,
              ),
              SizedBox(height: 10.h),
              Text(
                "Connect with  me",
                style: GoogleFonts.roboto(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.github,
                        color: const Color(0xFFFFFFFF),
                        size: 30.sp,
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        "Asukwo-comfort",
                        style: GoogleFonts.roboto(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 25.w),
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.facebook,
                        color: const Color(0xFF3b5998),
                        size: 30.sp,
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        "Gal Komft",
                        style: GoogleFonts.roboto(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10.h),
              Row(
                children: [
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.twitter,
                        color: const Color(0xFF00acee),
                        size: 30.sp,
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        "HERmazing",
                        style: GoogleFonts.roboto(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(width: 25.w),
                  Row(
                    children: [
                      FaIcon(
                        FontAwesomeIcons.instagram,
                        color: const Color(0xFF8a3ab9),
                        size: 30.sp,
                      ),
                      SizedBox(width: 5.w),
                      Text(
                        "Comfort Asukwo",
                        style: GoogleFonts.roboto(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        AboutMeContainerWidget(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Skill",
                style: GoogleFonts.roboto(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.h),
              Text(
                "Kotlin",
                style: GoogleFonts.roboto(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                "HTML/CSS",
                style: GoogleFonts.roboto(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                "Flutter",
                style: GoogleFonts.roboto(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                "Dart",
                style: GoogleFonts.roboto(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 5.h),
              Text(
                "Git",
                style: GoogleFonts.roboto(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 20.h),
        Text(
          "Interests",
          style: GoogleFonts.roboto(
            fontSize: 18.sp,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        SizedBox(height: 10.h),
        Row(
          children: [
            const InterestChipWidget(text: 'Building interactive UIs'),
            SizedBox(width: 15.h),
            const InterestChipWidget(text: 'Reading'),
          ],
        ),
        SizedBox(height: 10.h),
        Row(
          children: [
            const InterestChipWidget(text: 'Nature'),
            SizedBox(width: 15.h),
            const InterestChipWidget(text: 'Travelling'),
            SizedBox(width: 15.h),
            const InterestChipWidget(text: 'Exercise'),
          ],
        ),
      ],
    );
  }
}

class AboutMeContainerWidget extends StatelessWidget {
  final Widget child;
  const AboutMeContainerWidget({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.all(20.sp),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(31, 30, 37, 0.8),
        borderRadius: BorderRadius.circular(12.r),
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(31, 30, 37, 0.8),
            // color: const Color.fromRGBO(96, 71, 249, 0.2),
            blurRadius: 3.r,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: child,
    );
  }
}

class InterestChipWidget extends StatelessWidget {
  final String text;
  const InterestChipWidget({
    required this.text,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Chip(
        label: Padding(
          padding: const EdgeInsets.fromLTRB(10.0, 8.0, 10.0, 8.0),
          child: Text(
            text,
            style: GoogleFonts.roboto(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: Colors.white,
            ),
          ),
        ),
        backgroundColor: const Color.fromRGBO(31, 30, 37, 0.8),
      ),
    );
  }
}