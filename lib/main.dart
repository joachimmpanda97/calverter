import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:google_fonts/google_fonts.dart';
import 'buttons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

var question = '';
var answer = '';

final List<dynamic> buttons = [
  'R',
  '\$',
  '%',
  '÷',
  '7',
  '8',
  '9',
  '×',
  '4',
  '5',
  '6',
  '-',
  '1',
  '2',
  '3',
  '+',
  '⌫',
  '0',
  '.',
  '=',
];

class _MyHomePageState extends State<MyHomePage> {
  static const bgColor = const Color(0xFF22252E);
  static const typeArea = const Color(0xFF292D36);
  static const bgBtn = const Color(0xFF272B34);
  static const operatorColor = const Color(0xFFD06D70);
  static const topItemColor = const Color(0xFF45EAC7);

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                  child: Container(
                    alignment: Alignment.bottomRight,
                    child: Text(question,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 35,
                        )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 15, 0),
                  child: Container(
                    alignment: Alignment.bottomRight,
                    child: Text(answer,
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 35,
                        )),
                  ),
                ),
              ],
            ),
          )),
          Expanded(
            flex: 2,
            child: Container(
              decoration: BoxDecoration(
                  color: typeArea,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50.0),
                      topRight: Radius.circular(50.0))),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 20, 20, 20),
                child: GridView.builder(
                  itemCount: buttons.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4),
                  itemBuilder: (BuildContext context, int index) {
                    if (index == 0) {
                      return Container();
                    }

                    // Currency Converter icon
                    if (index == 1) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CalButtons(
                          show: () {
                            setState(() {
                              question += buttons[index];
                            });
                          },
                          buttonText: buttons[index],
                          textColor: topItemColor,
                          color: bgBtn,
                          size: 30,
                        ),
                      );
                    }

                    // Subtraction icon
                    if (index == 11) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CalButtons(
                          show: () {
                            setState(() {
                              question += buttons[index];
                            });
                          },
                          buttonText: buttons[index],
                          textColor: operatorColor,
                          color: bgBtn,
                          size: 40,
                        ),
                      );
                    }

                    // Delete icon
                    if (index == 16) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CalButtons(
                          buttonText: buttons[index],
                          textColor: topItemColor,
                          color: bgBtn,
                          size: 25,
                          show: () {
                            setState(() {
                              question =
                                  question.substring(0, question.length - 1);
                            });
                          },
                          clear: () {
                            setState(() {
                              question = '';
                              answer = '';
                            });
                          },
                        ),
                      );
                    }

                    // Percentage icon
                    if (index == 2) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CalButtons(
                          show: () {
                            setState(() {
                              question += buttons[index];
                            });
                          },
                          buttonText: buttons[index],
                          textColor: topItemColor,
                          color: bgBtn,
                          size: 30,
                        ),
                      );
                    }

                    // Divide icon
                    if (index == 3) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CalButtons(
                          show: () {
                            setState(() {
                              question += buttons[index];
                            });
                          },
                          buttonText: buttons[index],
                          textColor: operatorColor,
                          color: bgBtn,
                          size: 40,
                        ),
                      );
                    }

                    // Multiplication icon
                    if (index == 7) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CalButtons(
                          show: () {
                            setState(() {
                              question += buttons[index];
                            });
                          },
                          buttonText: buttons[index],
                          textColor: operatorColor,
                          color: bgBtn,
                          size: 40,
                        ),
                      );
                    }

                    //Addition icon
                    if (index == 15) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CalButtons(
                          show: () {
                            setState(() {
                              question += buttons[index];
                            });
                          },
                          buttonText: buttons[index],
                          textColor: operatorColor,
                          color: bgBtn,
                          size: 40,
                        ),
                      );
                    }

                    //Answer icon
                    if (index == 19) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: CalButtons(
                          show: () {
                            setState(() {
                              equals();
                            });
                          },
                          buttonText: buttons[index],
                          textColor: operatorColor,
                          color: bgBtn,
                          size: 40,
                        ),
                      );
                    }
                    // The rest of Buttons
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CalButtons(
                        show: () {
                          setState(() {
                            question += buttons[index];
                          });
                        },
                        buttonText: buttons[index],
                        color: bgBtn,
                        textColor: isOperator(buttons[index])
                            ? operatorColor
                            : Colors.white,
                        size: isOperator(buttons[index]) ? 40 : 35,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

bool isOperator(String x) {
  if (x == "＋" || x == "×" || x == "-" || x == "+" || x == "=") {
    return true;
  }
  return false;
}

void equals() {
  String finalQuestion = question;

  finalQuestion = finalQuestion.replaceAll('×', '*');
  finalQuestion = finalQuestion.replaceAll('÷', '/');
  finalQuestion = finalQuestion.replaceAll('%', '*0.01');

  Parser p = Parser();
  Expression exp = p.parse(finalQuestion);
  ContextModel cm = ContextModel();
  double eval = exp.evaluate(EvaluationType.REAL, cm);

  answer = eval.toString();
}
