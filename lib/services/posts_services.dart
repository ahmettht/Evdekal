import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:evdekal/models/posts_models.dart';
Future<List<Posts>> fetchData() async {
  final response =
  await http.get(Uri.parse('https://jsonplaceholder.typicode.com/posts'));
  if (response.statusCode == 200) {
    List jsonResponse = json.decode(response.body);
    return jsonResponse.map((data) => new Posts.fromJson(data)).toList();
  } else {
    throw Exception('Unexpected error occured!');
  }
}