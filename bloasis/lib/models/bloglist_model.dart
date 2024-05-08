import 'dart:convert';

import 'package:http/http.dart';

class Bloglist {
  List<Data>? data;
  bool? status;

  Bloglist({this.data, this.status});

  Bloglist.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    data['status'] = this.status;
    return data;
  }
}

class Data {
  String? blogId;
  String? blogTitle;
  String? blogImage;
  String? blogCategories;
  String? blogDescription;
  String? blogContent;
  String? blogTags;
  String? userName;
  String? blogDate;

  Data(
      {this.blogId,
      this.blogTitle,
      this.blogImage,
      this.blogCategories,
      this.blogDescription,
      this.blogContent,
      this.blogTags,
      this.userName,
      this.blogDate});

  Data.fromJson(Map<String, dynamic> json) {
    blogId = json['blog_id'];
    blogTitle = json['blog_title'];
    blogImage = json['blog_image'];
    blogCategories = json['blog_categories'];
    blogDescription = json['blog_description'];
    blogContent = json['blog_content'];
    blogTags = json['blog_tags'];
    userName = json['user_name'];
    blogDate = json['blog_date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['blog_id'] = this.blogId;
    data['blog_title'] = this.blogTitle;
    data['blog_image'] = this.blogImage;
    data['blog_categories'] = this.blogCategories;
    data['blog_description'] = this.blogDescription;
    data['blog_content'] = this.blogContent;
    data['blog_tags'] = this.blogTags;
    data['user_name'] = this.userName;
    data['blog_date'] = this.blogDate;
    return data;
  }
}

String baseurl = "http://127.0.0.0/blogoasis//api/";

class apicalling {
  Future<Bloglist?> getdata() async {
    final res = await put(Uri.parse(baseurl + "Get_api_blogPost.php"),
        body: jsonEncode(<String, String>{}));

    print(res.statusCode);
    if (res.statusCode == 200) {
      return Bloglist.fromJson(json.decode(res.body));
    } else {
      print("data not found");
    }
  }
}



