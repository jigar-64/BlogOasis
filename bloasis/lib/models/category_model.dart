import 'dart:convert';

import 'package:http/http.dart';

class CategoryList {
  List<CatData>? data;
  bool? status;

  CategoryList({this.data, this.status});

  CategoryList.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <CatData>[];
      json['data'].forEach((v) {
        data!.add(new CatData.fromJson(v));
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

class CatData {
  String? catId;
  String? catName;

  CatData({this.catId, this.catName});

  CatData.fromJson(Map<String, dynamic> json) {
    catId = json['cat_id'];
    catName = json['cat_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['cat_id'] = this.catId;
    data['cat_name'] = this.catName;
    return data;
  }
}

class catapicalling {
  Future<CategoryList?> getdata() async {
    final response = await put(
        Uri.parse("http://127.0.0.0/blogoasis//api/Get_api_category.php"),
        body: jsonEncode(<String, String>{}));

    print(response.statusCode);
    if (response.statusCode == 200) {
      return CategoryList.fromJson(json.decode(response.body));
    } else {
      print("data not found form leavse update");
    }
  }
}
