import 'package:bloasis/screens/catbloglist.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

import '../models/bloglist_model.dart';
import '../models/category_model.dart';

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  List<CatData> catdata = [];
  List<Data> data = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    fetchCategoriesList();
    // fetchBlogList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Categories"),
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios)),
      ),
      body: ListView.builder(
        itemCount: catdata.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(10.0),
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
              child: ListTile(
                onTap: () async {
                  final response = await http.post(
                    Uri.parse(
                        "http://10.0.2.2:80/blogoasis/api/Post_api_blog_usingCategory.php"),
                    body: {
                      'cat_name': catdata[index].catName,
                    },
                  );
                  if (response.statusCode == 200) {
                    Get.to(CategBlogList(
                      catname: catdata[index].catName!,
                      bcat: catdata[index].catName!,
                    ));
                  }

                  print(response.body);
                },
                title: Text(catdata[index].catName!),
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> fetchCategoriesList() async {
    catapicalling capi = catapicalling();

    CategoryList? categ = await capi.getdata();
    if (categ!.status == true) {
      setState(() {
        catdata = categ.data!;
      });
    }
  }

  // Future<void> fetchBlogList() async {
  //   apicalling api = apicalling();

  //   Bloglist? blog = await api.getdata();
  //   if (blog!.status == true) {
  //     setState(() {
  //       data = blog.data!;
  //     });
  //   }
  // }
}
