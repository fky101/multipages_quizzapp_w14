import 'question.dart';
class QuizBrain {

  int _questionNumber = 0;

  //TODO 2: ปรับเปลี่ยนหรือเพิ่มชุดคำถามใน questionBank
  List<Question> _questionBank=[
    Question(q: '1 + 1 = 2', a: true),
    Question(q: '2 + 2 = 3', a: false),
    Question(q: '3 + 3 = 7', a: false),
    Question(q: '7 + 7 = 14', a: true),
    Question(q: '14 + 14 = 23', a: false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length-1) {
      _questionNumber++;
    }
  }

  String? getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool? getQuestionAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }

}