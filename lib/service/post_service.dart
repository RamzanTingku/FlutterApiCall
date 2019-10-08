import 'dart:async';

import 'package:api_call_practice/model/post_list.dart';
import 'package:http/http.dart' as http;

String url = 'https://jsonplaceholder.typicode.com/posts';

Future<List<Post>> getAllPosts() async {
  final response = await http.get(url);
  print(response.body);
  return allPostFromJson(response.body);
}
