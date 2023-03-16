import 'package:flutter/material.dart';
import 'package:project_12/imput_page.dart';
import 'constants.dart';
import 'reuse_class.dart';
import 'navigator.dart';
import 'calculate_classs.dart';
class ResultPage extends StatelessWidget {
  ResultPage({required this.bmiResult, required this.bmiText, required this.interpretation});
   final String bmiResult;
   final String bmiText;
   final String interpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMICALCULATER'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              child: Text('Your Results',
              style: kTextStyle2
                ),
            ),
          ),
          Expanded(
            flex: 5,
            child: Reuseclass(
              cardChild:
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(bmiText.toUpperCase(),
                  style:TextStyle(
                    color: Colors.green,
                    fontWeight:FontWeight.bold,
                    fontSize: 30,
                  ),),
                  Text(bmiResult,style: kTextStyle2,),
                  Text(interpretation,
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
              colour: kActiveColor,
              onPrased: (){

              },
          ),
          ),
          ButtonButton(buttonText: ('Re Calculate'), onTAP: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=>InputPage(),),);
          },),

        ],
      ),
    );
  }
}
