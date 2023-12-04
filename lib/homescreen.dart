import 'package:flutter/material.dart';
import 'package:calculator/constants.dart';
import 'package:math_expressions/math_expressions.dart';

class homescreen extends StatefulWidget {
  const homescreen({super.key});

  @override
  State<homescreen> createState() => _homescreenState();
}

class _homescreenState extends State<homescreen> {
  var userInput = '';
  var answer = '';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  Scaffold(
        backgroundColor: Colors.black,
            body: SafeArea(
              child: Padding(
                padding:const EdgeInsets.symmetric(horizontal: 10),
                child: Flexible(
                  child: Column(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 20),
                          child: Column(
                            children: [
                              Text(userInput.toString(),style:const TextStyle(fontSize: 30,color: Colors.white),),
                              Text(answer.toString(),style:const TextStyle(fontSize: 30,color: Colors.white),),
                        
                            ],
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          children: [
                            Row(
                              children: [
                                MyButton(title: 'AC',onPress: (){
                                  userInput = '';
                                  answer = '';
                                  setState(() {
                                    
                                  });
                                                                },),
                                MyButton(title: '+/-',onPress: (){
                                  userInput += '+/-';
                                  setState(() {
                                    
                                  });
                                }),
                                MyButton(title: '%',onPress: (){
                                  userInput += '%';
                                  setState(() {
                                    
                                  });
                                }),
                                MyButton(title: '/',onPress: (){
                                  userInput += '/';
                                  setState(() {
                                    
                                  });
                                },Bcolor:const Color(0xffffa00a),)
                              ],
                            ),
                            Row(
                              children: [
                                MyButton(title: '7',onPress: (){
                                  userInput += '7';
                                  setState(() {
                                    
                                  });
                                },),
                                MyButton(title: '8',onPress: (){
                                  userInput += '8';
                                  setState(() {
                                    
                                  });
                                }),
                                MyButton(title: '9',onPress: (){
                                  userInput += '9';
                                  setState(() {
                                    
                                  });
                                }),
                                MyButton(title: 'x',onPress: (){
                                  userInput += 'x';
                                  setState(() {
                                    
                                  });
                                },Bcolor:const Color(0xffffa00a),)
                              ],
                            ),
                            Row(
                              children: [
                                MyButton(title: '4',onPress: (){
                                  userInput += '4';
                                  setState(() {
                                    
                                  });
                                },),
                                MyButton(title: '5',onPress: (){
                                  userInput += '5';
                                  setState(() {
                                    
                                  });
                                }),
                                MyButton(title: '6',onPress: (){
                                  userInput += '6';
                                  setState(() {
                                    
                                  });
                                }),
                                MyButton(title: '-',onPress: (){
                                  userInput += '-';
                                  setState(() {
                                    
                                  });
                                },Bcolor:const Color(0xffffa00a),)
                              ],
                            ),
                            Row(
                              children: [
                                MyButton(title: '1',onPress: (){
                                  userInput += '1';
                                  setState(() {
                                    
                                  });
                                },),
                                MyButton(title: '2',onPress: (){
                                  userInput += '2';
                                  setState(() {
                                    
                                  });
                                }),
                                MyButton(title: '3',onPress: (){
                                  userInput += '3';
                                  setState(() {
                                    
                                  });
                                }),
                                MyButton(title: '+',onPress: (){
                                  userInput += '+';
                                  setState(() {
                                    
                                  });
                                },Bcolor:const Color(0xffffa00a),)
                              ],
                            ),
                            Row(
                              children: [
                                MyButton(title: '0',onPress: (){
                                  userInput += '0';
                                  setState(() {
                                    
                                  });
                                },),
                                MyButton(title: '.',onPress: (){
                                  userInput += '.';
                                  setState(() {
                                    
                                  });
                                }),
                                MyButton(title: 'DEL',onPress: (){
                                  userInput = userInput.substring(0,userInput.length-1);
                                  setState(() {
                                    
                                  });
                                }),
                                MyButton(title: '=',onPress: (){
                                  equalPres();
                                  setState(() {
                                    
                                  });
                                },Bcolor:const Color(0xffffa00a),)
                              ],
                            ),
                          ],
                        ),
                      ),

                      
                    ],
                  ),
                )
              )
            )),
    );
  }

void equalPres(){

  String finaluserinput = userInput.replaceAll('x', '*');
  Parser p = Parser();
  Expression expression = p.parse(finaluserinput);
  ContextModel contextModel = ContextModel();
  double eval = expression.evaluate(EvaluationType.REAL, contextModel);
  answer = eval.toString();
}
}