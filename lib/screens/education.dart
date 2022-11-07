import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_resume/screens/profile.dart';



import 'experience.dart';

class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
      shrinkWrap: true,
      children: [
        const AboutMeContainerWidget(
          child: ExperienceContainerWidget(
            icon: Icons.history_edu_outlined,
            color: Color(0xFFA471F7),
            jobTitle: "Manful Computer, Uyo",
            post: "Computer Science Diploma",
            duration: "Jan 2021-June 2021",
          ),
        ),
        SizedBox(height: 30.h),
        const AboutMeContainerWidget(
          child: ExperienceContainerWidget(
            icon: Icons.history_edu_outlined,
            color: Color(0xFF84DCC5),
            jobTitle: "University of Uyo",
            post: "Physics",
            duration: "2015-2020",
          ),
        ),
      ],
    );
  }
}