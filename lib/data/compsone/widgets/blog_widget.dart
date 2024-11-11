import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/data/compsone/classes/blog_item.dart';
import 'package:newapp/data/compsone/constants/text.dart';
import 'package:newapp/data/compsone/pages/RegistrationPage.dart';

class Blog extends StatefulWidget {
  const Blog({
    super.key,
    required this.bloginfo,
  });

  final Item bloginfo;

  @override
  State<Blog> createState() => _BlogState();
}

class _BlogState extends State<Blog> {
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 0, 20, 49),
      child: Expanded(
        child: GestureDetector(
          onTap: () => {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) {
                  return const RegistrationPage();
                },
              ),
            ),
          },
          child: Container(
            width: double.infinity,
            height: 400.h,
            decoration:
                BoxDecoration(borderRadius: BorderRadius.circular(30.r)),
            padding: EdgeInsets.all(20.r),
            child: Column(
              // mainAxisAlignment: MainAxisAlignment.,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  widget.bloginfo.imgUrl,
                ),
                SizedBox(height: 20.h),
                Text(
                  widget.bloginfo.title,
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.white,
                  ),
                ),
                // SizedBox(height: 20.h),
                Text(
                  desc,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 10.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
