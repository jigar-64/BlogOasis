import 'package:bloasis/colors.dart';
import 'package:bloasis/drawer.dart';
import 'package:bloasis/screens/blogscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/bloglist_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Data> list = [];
  @override
  void initState() {
    super.initState();
    fetchBlogList();
  }

  bool _selected = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 7,
      child: SafeArea(
          child: Scaffold(
              backgroundColor: AppColors.secondaryColor,
              drawer: MenuDrawer(),
              appBar: AppBar(
                title: Text("Blog Oasis"),
                centerTitle: false,
                actions: const [
                  Icon(Icons.search),
                  SizedBox(
                    width: 20,
                  ),
                  Icon(Icons.view_day_sharp),
                  SizedBox(
                    width: 20,
                  )
                ],
                backgroundColor: AppColors.logoColor2,
                bottom: TabBar(
                    padding: const EdgeInsets.only(bottom: 5, left: 5),
                    isScrollable: true,
                    indicatorColor: AppColors.logoColor2,
                    indicator: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.white),
                    unselectedLabelColor: Colors.white,
                    labelColor: Colors.black,
                    tabs: [
                      Tab(
                        child: TabBarContainer("Latest"),
                      ),
                      Tab(
                        child: TabBarContainer("HTML"),
                      ),
                      Tab(
                        child: TabBarContainer("Sports"),
                      ),
                      Tab(
                        child: TabBarContainer("CSS"),
                      ),
                      Tab(
                        child: TabBarContainer("PHP"),
                      ),
                      Tab(
                        child: TabBarContainer("JAVA SCRIPT"),
                      ),
                      Tab(
                        child: TabBarContainer("BOOTSTRAP"),
                      ),
                    ]),
              ),
              body: TabBarView(children: [
                ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: InkWell(
                        onTap: () async {
                          final response = await http.post(
                            Uri.parse(
                                "http://127.0.0.0/blogoasis/api/Post_api_blogpost_id.php"),
                            body: {
                              'bid': list[index].blogId,
                              // 'password': password,
                            },
                          );
                          if (response.statusCode == 200) {
                            Get.to(BlogScreen(
                              data: list[index],
                            ));
                          }
                          // print("RonakResponce" + response.statusCode.toString());
                          print(response.body);
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                                boxShadow: [
                                  BoxShadow(
                                      blurRadius: 2,
                                      blurStyle: BlurStyle.outer,
                                      color: Colors.black)
                                ]),
                            child: Column(
                              children: [
                                Container(
                                  alignment: Alignment.center,
                                  width: MediaQuery.of(context).size.width,
                                  color: Color.fromARGB(255, 103, 26, 186),
                                  child: Text(
                                    list[index].blogTitle!,
                                    maxLines: 2,
                                    style: TextStyle(
                                      fontSize: 25,
                                      color: Colors.white,
                                      // backgroundColor: AppColors.logoColor
                                      // Color.fromARGB(171, 97, 10, 4)
                                    ),
                                  ),
                                ),
                                Image.network(
                                  list[index].blogImage!,
                                  fit: BoxFit.fitWidth,
                                ),
                              ],
                            )),
                      ),
                    );
                  },
                ),
                ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    if (!(list[index].blogCategories != "HTML")) {
                      return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: InkWell(
                            onTap: () async {
                              final response = await http.post(
                                Uri.parse(
                                    "http://127.0.0.0/blogoasis/api/Post_api_blogpost_id.php"),
                                body: {
                                  'bid': list[index].blogId,
                                  // 'password': password,
                                },
                              );
                              if (response.statusCode == 200) {
                                Get.to(BlogScreen(
                                  data: list[index],
                                ));
                              }
                              // print("RonakResponce" + response.statusCode.toString());
                              print(response.body);
                            },
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 2,
                                        blurStyle: BlurStyle.outer,
                                        color: Colors.black)
                                  ]),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(10),
                                      boxShadow: [
                                        BoxShadow(
                                            blurRadius: 2,
                                            blurStyle: BlurStyle.outer,
                                            color: Colors.black)
                                      ]),
                                  child: Column(
                                    children: [
                                      Container(
                                        alignment: Alignment.center,
                                        width:
                                            MediaQuery.of(context).size.width,
                                        color:
                                            Color.fromARGB(255, 103, 26, 186),
                                        child: Text(
                                          list[index].blogTitle!,
                                          maxLines: 2,
                                          style: TextStyle(
                                            fontSize: 25,
                                            color: Colors.white,
                                            // backgroundColor: AppColors.logoColor
                                            // Color.fromARGB(171, 97, 10, 4)
                                          ),
                                        ),
                                      ),
                                      Image.network(
                                        list[index].blogImage!,
                                        fit: BoxFit.fitWidth,
                                      ),
                                    ],
                                  )),
                            ),
                          )
                          //   child: ListTile(
                          //     onTap: () async {
                          //       final response = await http.post(
                          //         Uri.parse(
                          //             "http://127.0.0.0/blogoasis/api/Post_api_blogpost_id.php"),
                          //         body: {
                          //           'bid': list[index].blogId,
                          //         },
                          //       );
                          //       if (response.statusCode == 200) {
                          //         Get.to(BlogScreen(
                          //           data: list[index],
                          //         ));
                          //       }

                          //       print(response.body);
                          //     },
                          //     leading: Container(
                          //       decoration: BoxDecoration(
                          //         borderRadius: BorderRadius.circular(50),
                          //       ),
                          //       height: 50,
                          //       width: 50,
                          //       child: ClipRRect(
                          //         borderRadius: BorderRadius.circular(50),
                          //         child: Image.network(
                          //           list[index].blogImage!,
                          //           fit: BoxFit.fill,
                          //         ),
                          //       ),
                          //     ),
                          //     title: Text(list[index].blogTitle!),
                          //     subtitle: Text(list[index].blogDescription!,
                          //         maxLines: 3, overflow: TextOverflow.ellipsis),
                          //   ),
                          // ),
                          );
                    } else {
                      return SizedBox();
                    }
                  },
                ),
                ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    if (!(list[index].blogCategories != "Sports")) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: () async {
                            final response = await http.post(
                              Uri.parse(
                                  "http://127.0.0.0/blogoasis/api/Post_api_blogpost_id.php"),
                              body: {
                                'bid': list[index].blogId,
                                // 'password': password,
                              },
                            );
                            if (response.statusCode == 200) {
                              Get.to(BlogScreen(
                                data: list[index],
                              ));
                            }
                            // print("RonakResponce" + response.statusCode.toString());
                            // print(response.body);
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 2,
                                        blurStyle: BlurStyle.outer,
                                        color: Colors.black)
                                  ]),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width,
                                    color: Color.fromARGB(255, 103, 26, 186),
                                    child: Text(
                                      list[index].blogTitle!,
                                      maxLines: 2,
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        // backgroundColor: AppColors.logoColor
                                        // Color.fromARGB(171, 97, 10, 4)
                                      ),
                                    ),
                                  ),
                                  Image.network(
                                    list[index].blogImage!,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ],
                              )),
                        ),
                      );
                    } else {
                      return SizedBox();
                    }
                  },
                ),
                ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    if (!(list[index].blogCategories != "CSS")) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: () async {
                            final response = await http.post(
                              Uri.parse(
                                  "http://127.0.0.0/blogoasis/api/Post_api_blogpost_id.php"),
                              body: {
                                'bid': list[index].blogId,
                                // 'password': password,
                              },
                            );
                            if (response.statusCode == 200) {
                              Get.to(BlogScreen(
                                data: list[index],
                              ));
                            }
                            // print("RonakResponce" + response.statusCode.toString());
                            // print(response.body);
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 2,
                                        blurStyle: BlurStyle.outer,
                                        color: Colors.black)
                                  ]),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width,
                                    color: Color.fromARGB(255, 103, 26, 186),
                                    child: Text(
                                      list[index].blogTitle!,
                                      maxLines: 2,
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        // backgroundColor: AppColors.logoColor
                                        // Color.fromARGB(171, 97, 10, 4)
                                      ),
                                    ),
                                  ),
                                  Image.network(
                                    list[index].blogImage!,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ],
                              )),
                        ),
                      );
                    } else {
                      return SizedBox();
                    }
                  },
                ),
                ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    if (!(list[index].blogCategories != "PHP")) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: () async {
                            final response = await http.post(
                              Uri.parse(
                                  "http://127.0.0.0/blogoasis/api/Post_api_blogpost_id.php"),
                              body: {
                                'bid': list[index].blogId,
                                // 'password': password,
                              },
                            );
                            if (response.statusCode == 200) {
                              Get.to(BlogScreen(
                                data: list[index],
                              ));
                            }
                            // print("RonakResponce" + response.statusCode.toString());
                            // print(response.body);
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 2,
                                        blurStyle: BlurStyle.outer,
                                        color: Colors.black)
                                  ]),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width,
                                    color: Color.fromARGB(255, 103, 26, 186),
                                    child: Text(
                                      list[index].blogTitle!,
                                      maxLines: 2,
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        // backgroundColor: AppColors.logoColor
                                        // Color.fromARGB(171, 97, 10, 4)
                                      ),
                                    ),
                                  ),
                                  Image.network(
                                    list[index].blogImage!,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ],
                              )),
                        ),
                      );
                    } else {
                      return SizedBox();
                    }
                  },
                ),
                ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    if (!(list[index].blogCategories != "JAVA SCRIPT")) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: () async {
                            final response = await http.post(
                              Uri.parse(
                                  "http://127.0.0.0/blogoasis/api/Post_api_blogpost_id.php"),
                              body: {
                                'bid': list[index].blogId,
                                // 'password': password,
                              },
                            );
                            if (response.statusCode == 200) {
                              Get.to(BlogScreen(
                                data: list[index],
                              ));
                            }
                            // print("RonakResponce" + response.statusCode.toString());
                            // print(response.body);
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 2,
                                        blurStyle: BlurStyle.outer,
                                        color: Colors.black)
                                  ]),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width,
                                    color: Color.fromARGB(255, 103, 26, 186),
                                    child: Text(
                                      list[index].blogTitle!,
                                      maxLines: 2,
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        // backgroundColor: AppColors.logoColor
                                        // Color.fromARGB(171, 97, 10, 4)
                                      ),
                                    ),
                                  ),
                                  Image.network(
                                    list[index].blogImage!,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ],
                              )),
                        ),
                      );
                    } else if (list[index].blogCategories != "JAVA SCRIPT") {
                      return Center(child: Text("No Data Found"));
                    }
                  },
                ),
                ListView.builder(
                  itemCount: list.length,
                  itemBuilder: (context, index) {
                    if (!(list[index].blogCategories != "Bootstrap")) {
                      return Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: InkWell(
                          onTap: () async {
                            final response = await http.post(
                              Uri.parse(
                                  "http://127.0.0.0/blogoasis/api/Post_api_blogpost_id.php"),
                              body: {
                                'bid': list[index].blogId,
                                // 'password': password,
                              },
                            );
                            if (response.statusCode == 200) {
                              Get.to(BlogScreen(
                                data: list[index],
                              ));
                            }
                            // print("RonakResponce" + response.statusCode.toString());
                            // print(response.body);
                          },
                          child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                  boxShadow: [
                                    BoxShadow(
                                        blurRadius: 2,
                                        blurStyle: BlurStyle.outer,
                                        color: Colors.black)
                                  ]),
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.center,
                                    width: MediaQuery.of(context).size.width,
                                    color: Color.fromARGB(255, 103, 26, 186),
                                    child: Text(
                                      list[index].blogTitle!,
                                      maxLines: 2,
                                      style: TextStyle(
                                        fontSize: 25,
                                        color: Colors.white,
                                        // backgroundColor: AppColors.logoColor
                                        // Color.fromARGB(171, 97, 10, 4)
                                      ),
                                    ),
                                  ),
                                  Image.network(
                                    list[index].blogImage!,
                                    fit: BoxFit.fitWidth,
                                  ),
                                ],
                              )),
                        ),
                      );
                    } else {
                      return SizedBox();
                    }
                  },
                ),
              ]))),
    );
  }

  Container TabBarContainer(txt) {
    return Container(
      alignment: Alignment.center,
      width: 100,
      child: Text(
        txt,
        style: const TextStyle(fontSize: 15),
      ),
    );
  }

  Future<void> fetchBlogList() async {
    apicalling api = apicalling();

    Bloglist? blog = await api.getdata();
    if (blog!.status == true) {
      setState(() {
        list = blog.data!;
      });
      print(list[0].blogImage);
    }
  }
}
