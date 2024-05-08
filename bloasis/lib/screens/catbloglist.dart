import 'package:bloasis/screens/blogscreen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/bloglist_model.dart';

class CategBlogList extends StatefulWidget {
  CategBlogList({super.key, required this.bcat, required this.catname});
  // String bname;
  String bcat;
  String catname;

  @override
  State<CategBlogList> createState() => _CategBlogListState();
}

class _CategBlogListState extends State<CategBlogList> {
  List<Data> lisr = [];
  int Count = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchBlogList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios)),
        title: Text(widget.bcat),
      ),
      body: ListView.builder(
        itemCount: lisr.length,
        itemBuilder: (context, index) {
          if (!(lisr[index].blogCategories != widget.catname)) {
            return Padding(
              padding: const EdgeInsets.all(10.0),
              child: InkWell(
                onTap: () async {
                  final response = await http.post(
                    Uri.parse(
                        "http://10.0.2.2:80/blogoasis/api/Post_api_blog_usingCategory.php"),
                    body: {
                      'cat_name': lisr[index].blogCategories,
                    },
                  );
                  if (response.statusCode == 200) {
                    Get.to(BlogScreen(
                      data: lisr[index],
                    ));
                  }
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
                            lisr[index].blogTitle!,
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
                          lisr[index].blogImage!,
                          fit: BoxFit.fitWidth,
                        ),
                      ],
                    )),
              ),
            );
          } else
            return SizedBox();
        
        },
      ),
    );
  }

  Future<void> fetchBlogList() async {
    apicalling api = apicalling();

    Bloglist? blog = await api.getdata();
    if (blog!.status == true) {
      setState(() {
        lisr = blog.data!;
      });
    }
  }
}
