import 'package:http/http.dart' as http;
import 'dart:convert';

class ResponseClass {
  var question;
  var incorrect_answers;
  var correct_answer;
  void getQuiz() async {
    http.Response response = await http.get(
      Uri.parse(
          'https://opentdb.com/api.php?amount=1&category=9&difficulty=easy'),
    );
    if (response.statusCode == 200) {
      String data = response.body;
      // print(data);
      question = jsonDecode(data)["results"][3]["question"];
      incorrect_answers = jsonDecode(data)["results"][5]["incorrect_anwsers"];
      correct_answer = jsonDecode(data)["results"][4]["correct_answer"];
    } else {
      print(response.body);
    }
  }
}
