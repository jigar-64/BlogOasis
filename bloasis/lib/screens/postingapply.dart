import 'dart:convert';

import 'package:bloasis/colors.dart';
import 'package:bloasis/drawer.dart';
import 'package:bloasis/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../inputdeco.dart';

class ApplyPosting extends StatefulWidget {
  const ApplyPosting({super.key});

  @override
  State<ApplyPosting> createState() => _ApplyPostingState();
}

class _ApplyPostingState extends State<ApplyPosting> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController name = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController phone = TextEditingController();
  TextEditingController confpassword = TextEditingController();
  bool value = false;
  Future<void> postData() async {
    final Map<String, dynamic> data = {
      'user_name': name.text,
      'user_email': email.text,
      'user_phoneNo': phone.text,
      'user_pass': confpassword.text,
    };

    final response = await http.post(
      Uri.parse("http://10.0.2.2/blogoasis/api/register_user_api.php"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(data),
    );

    if (response.statusCode == 200) {
      final responseData = jsonDecode(response.body);
      if (responseData['status'] == true) {
        print("Data posted successfully");
      } else {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("Data not posted. ${responseData['message']}")));
        // print("Data not posted. ${responseData['message']}");
      }
    } else {
      print("Error posting data. Status code: ${response.statusCode}");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MenuDrawer(),
        appBar: AppBar(
          // leading: InkWell(
          //     onTap: () {
          //       Navigator.pop(context);
          //     },
          //     child: Icon(Icons.arrow_back_ios_new)),
          title: Text("Posting Request"),
        ),
        body: Center(
          child: SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width * 0.9,
              height: MediaQuery.of(context).size.height * 0.75,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 0.50, color: Color(0x7F43749E)),
                  borderRadius: BorderRadius.circular(20),
                ),
                shadows: [
                  BoxShadow(
                    color: Color(0x3F43749E),
                    blurRadius: 4,
                    offset: Offset(0, 2),
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: Color(0x3F43749E),
                    blurRadius: 4,
                    offset: Offset(2, 0),
                    spreadRadius: 0,
                  ),
                  BoxShadow(
                    color: Color(0x3F43749E),
                    blurRadius: 4,
                    offset: Offset(2, 0),
                    spreadRadius: 0,
                  )
                ],
              ),
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15.0),
                  child: Form(
                    key: _formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                        ),
                        Center(
                          child: Text(
                            "Apply for Posting",
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.bold),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        // CustomTFF(
                        //   txt: "Full Name",
                        // ),
                        Customtxt("Full Name"),
                        TextFormField(
                            onFieldSubmitted: (value) {
                              email.clear();
                            },
                            controller: name,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                // Get.to(ApplyPosting());
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content:
                                            Text("Please Enter Your Name")));

                                return 'Please Enter Your Name';
                              }
                              return null;
                            },
                            decoration: buildInputDecoration("Full Name")),
                        // CustomTFF(
                        //   txt: 'Email',
                        // ),
                        Customtxt("Email"),
                        TextFormField(
                            controller: email,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                // Get.to(ApplyPosting());
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content:
                                            Text("Please Enter Your Email")));
                                return 'Please Enter Your Email';
                              }
                              return null;
                            },
                            decoration: buildInputDecoration("Email")),
                        // CustomTFF(
                        //   txt: 'Phone',
                        // ),
                        Customtxt("Phone"),
                        TextFormField(
                            controller: phone,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                // Get.to(ApplyPosting());
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content:
                                            Text("Please Enter Your Phone")));
                                return 'Please Enter Your Phone';
                              }
                              return null;
                            },
                            decoration: buildInputDecoration("Phone")),
                        // CustomTFF(
                        //   txt: 'Password',
                        // ),
                        Customtxt("Password"),
                        TextFormField(
                            controller: password,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                // Get.to(ApplyPosting());
                                ScaffoldMessenger.of(context).showSnackBar(
                                    SnackBar(
                                        content: Text(
                                            "Please Enter Your Password")));
                                return 'Please Enter Your Password';
                              }
                              return null;
                            },
                            decoration: buildInputDecoration("Password")),
                        // CustomTFF(
                        //   txt: 'Confirm Password',
                        // ),
                        Customtxt("Confirm Password"),
                        TextFormField(
                            controller: confpassword,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return 'Please enter confirm password';
                                // Get.to(ApplyPosting());
                              } else if (value != password.text) {
                                return 'Please enter confirm password';
                              }
                              return null;
                            },
                            decoration:
                                buildInputDecoration("Confirm Password")),
                        Row(
                          children: [
                            Checkbox(
                              fillColor:
                                  MaterialStatePropertyAll(AppColors.logoColor),
                              value: this.value,
                              onChanged: (value) {
                                setState(() {
                                  this.value = value!;
                                });
                              },
                            ), //Che
                            Text("Terms and conditions"),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        InkWell(
                          onTap: () {
                            if (_formKey.currentState!.validate()) {
                              postData();

                              Get.to(HomeScreen());
                            }
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 45,
                            decoration: ShapeDecoration(
                              gradient: LinearGradient(colors: [
                                AppColors.logoColor,
                                AppColors.logoColor2
                              ]),
                              // color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              ),
                            ),
                            alignment: Alignment.center,
                            child: Text(
                              "Submit",
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}

Padding Customtxt(hnt) {
  return Padding(
    padding: EdgeInsets.only(left: 12, bottom: 5, top: 15),
    child: Text(
      hnt,
      style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
    ),
  );
}
// class CustomTFF extends StatelessWidget {
//   CustomTFF({super.key, required this.txt});
//   String txt;
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Padding(
//           padding: const EdgeInsets.only(left: 10.0),
//           child: Text(txt),
//         ),
//         SizedBox(
//           height: 5,
//         ),
//         Container(
//           alignment: Alignment.center,
//           padding: EdgeInsets.symmetric(horizontal: 10),
//           width: MediaQuery.of(context).size.width,
//           height: 45,
//           decoration: ShapeDecoration(
//             color: Colors.white,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(20),
//             ),
//             shadows: [
//               BoxShadow(
//                 color: Color(0x3F43749E),
//                 blurRadius: 4,
//                 offset: Offset(0, 2),
//                 spreadRadius: 0,
//               ),
//               BoxShadow(
//                 color: Color(0x3F43749E),
//                 blurRadius: 4,
//                 offset: Offset(2, 0),
//                 spreadRadius: 0,
//               ),
//               BoxShadow(
//                 color: Color(0x3F43749E),
//                 blurRadius: 4,
//                 offset: Offset(2, 0),
//                 spreadRadius: 0,
//               )
//             ],
//           ),
//           child: TextFormField(
//             decoration: InputDecoration(
//                 hintText: txt, isDense: true, border: InputBorder.none),
//           ),
//         ),
//         SizedBox(
//           height: 15,
//         )
//       ],
//     );
//   }
// }
