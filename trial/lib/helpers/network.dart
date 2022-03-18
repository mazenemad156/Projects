import 'package:dio/dio.dart';

Future<List<dynamic>?> getPosts() async {
  try {
    Response response =
        await Dio().get("https://jsonplaceholder.typicode.com/posts");
    return response.data;
  } catch (e) {
    print('error $e');
    return null;
  }
}
