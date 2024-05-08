// ignore_for_file: camel_case_types, must_be_immutable, sort_child_properties_last

import 'package:bloasis/drawer.dart';
import 'package:flutter/material.dart';

class BlogScreen extends StatefulWidget {
  dynamic data;
  BlogScreen({super.key, this.data
      // required this.blogtitle,
      // required this.categoryname,
      // required this.date,
      // required this.content,
      // required this.blogdesc,
      // required this.tags,
      // required this.username
      });

  @override
  State<BlogScreen> createState() => _BlogScreenState();
}

class _BlogScreenState extends State<BlogScreen> {
  // String categoryname;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        drawer: MenuDrawer(),
        appBar: AppBar(
          title: Text(widget.data.blogCategories),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 13),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Image.network(widget.data.blogImage),
                Text(
                  widget.data.blogTitle,
                  // textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  widget.data.blogDescription!,
                  style: TextStyle(fontSize: 20, color: Colors.blueGrey),
                ),
                const SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    Text(
                      widget.data.userName,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.blueGrey, fontSize: 16),
                    ),
                    Text(
                      widget.data.blogDate,
                      textAlign: TextAlign.justify,
                      style: TextStyle(color: Colors.blueGrey, fontSize: 16),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  // textAlign: TextAlign.justify,
                  widget.data.blogContent,
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                // const SizedBox(
                //   height: 20,
                // ),
                // Row(
                //   children: const [
                //     Icon(Icons.favorite),
                //     SizedBox(
                //       width: 8,
                //     ),
                //     Text("26"),
                //     SizedBox(
                //       width: 30,
                //     ),
                //     Icon(Icons.comment),
                //     SizedBox(
                //       width: 8,
                //     ),
                //     Text("30"),
                //   ],
                // ),
                const SizedBox(
                  height: 20,
                ),
                Wrap(
                  direction: Axis.horizontal,
                  spacing: 15,
                  runSpacing: 15,
                  alignment: WrapAlignment.center,
                  children: [
                    tagContainer(
                      tags: widget.data.blogTags,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 50,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class tagContainer extends StatelessWidget {
  tagContainer({super.key, required this.tags});
  String tags;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 45,
      alignment: Alignment.center,
      child: Text(tags),
      decoration: BoxDecoration(
          color: Colors.white38,
          boxShadow: const [
            BoxShadow(blurRadius: 1, blurStyle: BlurStyle.outer),
          ],
          borderRadius: BorderRadius.circular(10)),
    );
  }
}
