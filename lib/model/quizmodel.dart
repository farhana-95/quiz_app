import 'package:quiz_app/question_answer.dart';

class Quizmodel {
  List<Questions>? ques;
  Quizmodel({this.ques,});

  Quizmodel.fromJson(Map<String, dynamic> json) {
    if (json['ques'] != null) {
      ques = <Questions>[];
      json['ques'].forEach((v) {
        ques!.add(new Questions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.ques != null) {
      data['ques'] = this.ques!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
class Questions {
  String? question;
  List<Ans>? ans;
  Null? imgUrl;
  String? corAns;
  String? score;


  Questions({required this.question,required this.ans, this.imgUrl, this.corAns, this.score});

  Questions.fromJson(Map<String, dynamic> json) {
    question = json['question'];
    imgUrl = json['imgUrl'];
    corAns = json['corAns'];
    score = json['score'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['question'] = this.question;
    data['imgUrl'] = this.imgUrl;
    data['corAns'] = this.corAns;
    data['score'] = this.score;
    return data;
  }
}
class Ans {
  String? A;
  String? B;
  String? C;
  String? D;

  Ans({required this.A, this.B, this.C, this.D});

  Ans.fromJson(Map<String, dynamic> json) {
    A = json['A'];
    B = json['B'];
    C = json['C'];
    D = json['D'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['A'] = this.A;
    data['B'] = this.B;
    data['C'] = this.C;
    data['D'] = this.D;
    return data;
  }
}