import 'package:flutter/material.dart';
import 'package:quizzler_app/questions.dart';

void main() => runApp(Quizzler());
Questions q = Questions();

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
            child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: QuizPage(),
        )),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> icons = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          child: Center(
            child: Text(
              q.getQuest(),
              style: TextStyle(color: Colors.amber, fontSize: 30),
            ),
          ),
          flex: 5,
        ),
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    bool thisButton = true;
                    (q.getAns() == thisButton)
                        ? icons.add(Icon(Icons.assignment_turned_in))
                        : icons.add(Icon(Icons.indeterminate_check_box));
                    
                    q.getNextNum();
                  });
                },
                child: Text(
                  'True',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.green,
                  ),
                ),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.lightGreenAccent),
                    borderRadius: BorderRadius.circular(30)),
              ),
            )),
        Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    bool thisButton = false;
                    (q.getAns() == thisButton)
                        ? icons.add(Icon(Icons.assignment_turned_in))
                        : icons.add(Icon(Icons.indeterminate_check_box));
                    q.getNextNum();
                  });
                },
                child: Text(
                  'False',
                  style: TextStyle(
                    fontSize: 30,
                    color: Colors.redAccent,
                  ),
                ),
                shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.red),
                    borderRadius: BorderRadius.circular(30)),
              ),
            )),
        Expanded(
            child: Row(
          children: icons,
        ))
      ],
    );
  }
}
