import 'dart:async';

import 'package:http/http.dart' as http;
import 'dart:convert' as convert;

import '../model/quizmodel.dart';


class Services {
  Future<Quizmodel> getallposts() async {
    Quizmodel quizmodel = Quizmodel();

    String url="https://herosapp.nyc3.digitaloceanspaces.com/quiz.json";
    try {
      final response = await http
          .get(Uri.parse(url))
          .timeout(const Duration(seconds: 10), onTimeout: () {
        throw TimeoutException("connection time out try agian");
      });

      if (response.statusCode == 200) {
        final Map<String, dynamic> parsed = convert.jsonDecode(response.body);
        quizmodel = Quizmodel.fromJson(parsed);
        return quizmodel;
      } else {
        return quizmodel;
      }
    } on TimeoutException catch (_) {
      print("response time out");
    }
    return quizmodel;
  }
}