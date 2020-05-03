import 'package:quizzler_app/questFormat.dart';
import 'main.dart';
class Questions {
  int _questionNum = 0;

  List<QForm> _allQuest = [
    QForm('Some cats are actually allergic to humans', true),
    QForm('You can lead a cow down stairs but not up stairs.', false),
    QForm('Approximately one quarter of human bones are in the feet.', true),
    QForm('A slug\'s blood is green.', true),
    QForm('Buzz Aldrin\'s mother\'s maiden name was \"Moon\".', true),
    QForm('It is illegal to pee in the Ocean in Portugal.', true),
    QForm(
        'No piece of square dry paper can be folded in half more than 7 times.',
        false),
    QForm(
        'In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.',
        true),
    QForm(
        'The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.',
        false),
    QForm(
        'The total surface area of two human lungs is approximately 70 square metres.',
        true),
    QForm('Google was originally called \"Backrub\".', true),
    QForm(
        'Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.',
        true),
    QForm(
        'In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.',
        true),
  ];

  void getNextNum() {
    (_questionNum < _allQuest.length) ? _questionNum++ : _questionNum = 0 ;  ;
  }

  String getQuest() => _allQuest[_questionNum].question;
  bool getAns() => _allQuest[_questionNum].answer;
}
