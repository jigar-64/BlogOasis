import 'package:bloasis/screens/aboutus.dart';
import 'package:bloasis/screens/contactus.dart';
import 'package:bloasis/screens/home.dart';
import 'package:bloasis/screens/postingapply.dart';
import 'package:bloasis/url.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'colors.dart';
import 'images.dart';
import 'screens/categories.dart';

class MenuDrawer extends StatefulWidget {
  const MenuDrawer({super.key});

  @override
  State<MenuDrawer> createState() => _MenuDrawerState();
}

class _MenuDrawerState extends State<MenuDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: AppColors.secondaryColor,
      child: ListView(
        children: [
          DrawerHeader(child: Image.asset(images.logo)),
          // ListTile()
          ListTile(
            onTap: () {
              Get.back();
              Get.to(HomeScreen());
            },
            title: Text(
              "Blogs",
            ),
          ),
          const Divider(
            color: Colors.blueGrey,
          ),
          ListTile(
            onTap: () {
              Get.back();
              Get.to(Categories());
            },
            title: Text(
              "Categories",
              // style: TextStyle(c),
            ),
          ),
          const Divider(
            color: Colors.blueGrey,
          ),
          ListTile(
            title: Text(
              "Social Media",
              style: TextStyle(color: Colors.blueGrey),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                  onTap: () {
                    Get.back();
                    launchWebsiteUrl();
                  },
                  child: Image.asset(
                    images.google,
                    height: 30,
                  )),
              InkWell(
                  onTap: () {
                    Get.back();
                    launchFaceBookUrl();
                  },
                  child: Image.asset(
                    images.facebook,
                    height: 30,
                  )),
              InkWell(
                  onTap: () {
                    Get.back();
                    launchInstagramUrl();
                  },
                  child: Image.asset(
                    images.instagram,
                    height: 30,
                  ))
            ],
          ),
          // ListTile(
          //   onTap: () {
          //     Get.back();
          //     launchWebsiteUrl();
          //   },
          //   title: Text("Website"),
          // ),
          // ListTile(
          //   onTap: () {
          //     Get.back();
          //     launchFaceBookUrl();
          //   },
          //   title: Text("Facebook"),
          // ),
          // ListTile(
          //   onTap: () {
          //     Get.back();
          //     launchTwitterUrl();
          //   },
          //   title: Text("Twitter"),
          // ),
          // ListTile(
          //   onTap: () {
          //     Get.back();
          //     launchInstagramUrl();
          //   },
          //   title: Text("Instagram"),
          // ),
          SizedBox(
            height: 20,
          ),
          const Divider(
            color: Colors.blueGrey,
          ),
          const ListTile(
            title: Text(
              "About",
              style: TextStyle(color: Colors.blueGrey),
            ),
          ),
          ListTile(
            onTap: () {
              Get.back();
              Get.to(AboutUs());
            },
            title: Text("About Us"),
          ),
          ListTile(
            onTap: () {
              Get.back();

              Get.to(ContactUs());
            },
            title: Text("Contact Us"),
          ),
          const Divider(
            color: Colors.blueGrey,
          ),
          ListTile(
            onTap: () {
              Get.back();
              Get.to(const ApplyPosting());
            },
            title: const Text("Apply For Posting"),
          ),
        ],
      ),
    );
  }
}
// listView(
//             children: [
//               DrawerHeader(child: Image.asset(images.logo)),
//               // ListTile()
//               ListTile(
//                 onTap: () {
//                   Get.back();
//                   Get.to(HomeScreen());
//                 },
//                 title: Text(
//                   "Blogs",
//                 ),
//               ),
//               const Divider(
//                 color: Colors.blueGrey,
//               ),
//               ListTile(
//                 onTap: () async {
//                   final response = await http.post(
//                     Uri.parse(
//                         "http://10.0.2.2:80/blogoasis/api/Post_api_blog_usingCategory.php"),
//                     body: {
//                       'cat_name': catdata[0].catName,
//                       // 'password': password,
//                     },
//                   );
//                   if (response.statusCode == 200) {
//                     print(catdata[0].catName);
//                   }
//                 },
//                 title: Text(
//                   "Categories",
//                   style: TextStyle(color: Colors.blueGrey),
//                 ),
//               ),
//               ListTile(
//                 onTap: () {
//                   Get.back();
//                   launchWebsiteUrl();
//                 },
//                 title: Text("Website"),
//               ),
//               ListTile(
//                 onTap: () {
//                   Get.back();
//                   launchFaceBookUrl();
//                 },
//                 title: Text("Facebook"),
//               ),
//               ListTile(
//                 onTap: () {
//                   Get.back();
//                   launchTwitterUrl();
//                 },
//                 title: Text("Twitter"),
//               ),
//               ListTile(
//                 onTap: () {
//                   Get.back();
//                   launchInstagramUrl();
//                 },
//                 title: Text("Instagram"),
//               ),
//               const Divider(
//                 color: Colors.blueGrey,
//               ),
//               const ListTile(
//                 title: Text(
//                   "About",
//                   style: TextStyle(color: Colors.blueGrey),
//                 ),
//               ),
//               ListTile(
//                 onTap: () {
//                   Get.back();
//                   Get.to(AboutUs());
//                 },
//                 title: Text("About Us"),
//               ),
//               ListTile(
//                 onTap: () {
//                   Get.back();

//                   Get.to(ContactUs());
//                 },
//                 title: Text("Contact Us"),
//               ),
//               const Divider(
//                 color: Colors.blueGrey,
//               ),
//               ListTile(
//                 onTap: () {
//                   Get.back();
//                   Get.to(const ApplyPosting());
//                 },
//                 title: const Text("Apply For Posting"),
//               ),
//             ],
//           ),