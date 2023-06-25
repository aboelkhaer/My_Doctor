import 'dart:convert';
import 'package:http/http.dart' as http;

class PostsModel{
  String? userId;
  int? catigoryId;
  String? catigoryName;
  String? title;
  String? content;
  String? imagepath;
  String? datePosted;


  PostsModel({required this.userId,required this.catigoryId,
    required this.catigoryName,required this.title,required this.content,required this.imagepath,required this.datePosted
  });


  factory PostsModel.fromjson(jsonData){
    return PostsModel(
      catigoryId: jsonData['catigoryId'],
      catigoryName: jsonData['catigoryName'],
      title: jsonData['title'],
      userId: jsonData['userId'],
      content: jsonData['content'],
      imagepath: jsonData['imagepath'],
      datePosted: jsonData['datePosted'],
    );
  }



}

class Autogenerated {
  int? postid;
  String? userId;
  int? catigoryId;
  String? catigoryName;
  String? title;
  String? content;
  String? imagepath;
  String? datePosted;

  Autogenerated(
      {this.postid,
        this.userId,
        this.catigoryId,
        this.catigoryName,
        this.title,
        this.content,
        this.imagepath,
        this.datePosted});

  Autogenerated.fromJson(Map<String, dynamic> json) {
    postid = json['postid'];
    userId = json['userId'];
    catigoryId = json['catigoryId'];
    catigoryName = json['catigoryName'];
    title = json['title'];
    content = json['content'];
    imagepath = json['imagepath'];
    datePosted = json['datePosted'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['postid'] = this.postid;
    data['userId'] = this.userId;
    data['catigoryId'] = this.catigoryId;
    data['catigoryName'] = this.catigoryName;
    data['title'] = this.title;
    data['content'] = this.content;
    data['imagepath'] = this.imagepath;
    data['datePosted'] = this.datePosted;
    return data;
  }
}