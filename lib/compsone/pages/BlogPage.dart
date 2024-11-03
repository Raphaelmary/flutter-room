import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newapp/compsone/classes/blog_item.dart';
import 'package:newapp/compsone/constants/text.dart';
import 'package:newapp/compsone/pages/RegistrationPage.dart';

import '../widgets/blog_widget.dart';
// import 'package:myflutterapp/widgets/blog_widget.dart';

class BlogPage extends StatefulWidget {
  const BlogPage({
    super.key,
  });

  // static const Item bloginfo;

  @override
  State<BlogPage> createState() => _BlogPageState();
}

class _BlogPageState extends State<BlogPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 10.w,
              vertical: 20.h,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Card(
                //   color: const Color.fromARGB(255, 0, 20, 49),
                //   child: Expanded(
                //     child: GestureDetector(
                //       onTap: () => {
                //         Navigator.push(
                //           context,
                //           MaterialPageRoute(
                //             builder: (context) {
                //               return const RegistrationPage();
                //             },
                //           ),
                //         ),
                //       },
                //       child: Container(
                //         width: double.infinity,
                //         height: 400.h,
                //         decoration: BoxDecoration(
                //             borderRadius: BorderRadius.circular(30.r)),
                //         padding: EdgeInsets.all(20.r),
                //         child: Column(
                //           // mainAxisAlignment: MainAxisAlignment.,
                //           crossAxisAlignment: CrossAxisAlignment.start,
                //           mainAxisAlignment: MainAxisAlignment.end,
                //           children: [
                //             Image.asset(
                //               'images/kali2.jpg',
                //             ),
                //             SizedBox(height: 20.h),
                //             Text(
                //               'Cyber Security',
                //               style: TextStyle(
                //                 fontSize: 20.sp,
                //                 color: Colors.white,
                //               ),
                //             ),
                //             // SizedBox(height: 20.h),
                //             Text(
                //               desc,
                //               textAlign: TextAlign.left,
                //               style: TextStyle(
                //                 fontSize: 10.sp,
                //                 fontWeight: FontWeight.w400,
                //                 color: Colors.white,
                //               ),
                //             ),
                //           ],
                //         ),
                //       ),
                //     ),
                //   ),
                // ),
                Blog(
                  bloginfo: Item(
                    title: 'About Us',
                    imgUrl: 'images/kali2.jpg',
                  ),
                ),
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Expanded(
                        child: Card(
                          child: Column(
                            children: [
                              Image.asset(
                                'images/logo.PNG',
                              ),
                              // SizedBox(height: 20.h),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Card(
                        child: Column(
                          children: [
                            Image.asset(
                              'images/logo.PNG',
                            ),
                            // SizedBox(height: 20.h),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Card(
                  borderOnForeground: true,
                  color: const Color.fromARGB(255, 0, 20, 49),
                  child: Container(
                    height: 400.h,
                    padding: const EdgeInsets.all(40.0),
                    // decoration: BoxDecoration(),
                    // color: Colors.red,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(
                          'images/Lifestyle-1.png',
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'Cyber Security',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          desc,
                          style: TextStyle(
                            fontSize: 10.sp,
                            fontWeight: FontWeight.w400,
                            color: Colors.white,
                          ),
                          textAlign: TextAlign.left,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: NavigationBar(
        backgroundColor: const Color.fromARGB(255, 236, 236, 236),
        indicatorColor: const Color.fromARGB(255, 163, 163, 163),
        destinations: const [
          NavigationDestination(icon: Icon(Icons.home), label: 'Home'),
          NavigationDestination(icon: Icon(Icons.person), label: 'Profile'),
          NavigationDestination(
              icon: Icon(Icons.notification_add_outlined),
              label: 'Notification')
        ],
        selectedIndex: 0,
        onDestinationSelected: (int val) {},
      ),
    );
  }
}
