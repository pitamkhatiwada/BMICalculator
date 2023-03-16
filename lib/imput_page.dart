import 'package:flutter/material.dart';
import 'package:project_12/reuse_class.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:project_12/icon_controler.dart';
import 'constants.dart';
import 'round_icon_button.dart';
import 'result_page.dart';
import 'navigator.dart';
import 'calculate_classs.dart';

enum Gender {
  male,
  female,
}

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender? selectedgender;
  int height = 180;
  int weight = 60;
  int age = 20;
  // Color malecolorCard = dcolor;
  // Color femaleColorCard = dcolor;
  // // 1 male, 2 female
  // void updateColor (Gender Sgender){
  //   if( Sgender == Gender.male ){
  //     if (malecolorCard == dcolor){
  //       malecolorCard = acolor;
  //       femaleColorCard = dcolor;
  //     }
  //     else{
  //       malecolorCard = dcolor;
  //     }
  //   }
  //   if (Sgender == Gender.female){
  //     if (femaleColorCard == dcolor){
  //       femaleColorCard = acolor;
  //       malecolorCard = dcolor;
  //     }
  //     else{
  //       femaleColorCard = dcolor;
  //     }
  //   }
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0A0E21),
      appBar: AppBar(
        title: Center(
          child: Text('BMI Calculator'),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Reuseclass(
                    onPrased: () {
                      setState(() {
                        selectedgender = Gender.male;
                      });
                    },
                    cardChild: IconContoral(
                      icon: FontAwesomeIcons.mars,
                      textt: ('MALE'),
                    ),
                    colour: selectedgender == Gender.male
                        ? kActiveColor
                        : kInActiveColor,
                  ),
                ),
                Expanded(
                  child: Reuseclass(
                    onPrased: () {
                      setState(() {
                        selectedgender = Gender.female;
                      });
                    },
                    cardChild: IconContoral(
                      icon: FontAwesomeIcons.venus,
                      textt: ('FEMALE'),
                    ),
                    colour: selectedgender == Gender.female
                        ? kActiveColor
                        : kInActiveColor,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Reuseclass(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HIGHT', style: kTextStyle),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(height.toString(), style: kTextStyle2),
                      Text(
                        'CM',
                        style: kTextStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15,
                      ),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                      thumbColor: Color(0xFFED1555),
                      activeTrackColor: Colors.white,
                      overlayColor: Color(0x29ED1555),
                      inactiveTrackColor: Color(0xFF8D8E98),
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120.0,
                      max: 280.0,
                      onChanged: (double newValue) {
                        setState(() {
                          height = newValue.round();
                        });
                      },
                    ),
                  ),
                ],
              ),
              colour: kActiveColor,
              onPrased: () {},
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: Reuseclass(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text('WEIGHT', style: kTextStyle),
                        Text(
                          weight.toString(),
                          style: kTextStyle2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  weight++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                    colour: kActiveColor,
                    onPrased: () {},
                  ),
                ),
                Expanded(
                  child: Reuseclass(
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 15,
                        ),
                        Text('AGE', style: kTextStyle),
                        Text(
                          age.toString(),
                          style: kTextStyle2,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  age--;
                                });
                              },
                            ),
                            SizedBox(width: 10),
                            RoundIconButton(
                              onPressed: () {
                                setState(() {
                                  age++;
                                });
                              },
                              icon: FontAwesomeIcons.plus,
                            ),
                          ],
                        ),
                      ],
                    ),
                    colour: kActiveColor,
                    onPrased: () {},
                  ),
                ),
              ],
            ),
          ),
          ButtonButton(
            onTAP: (){
              CalculateBrain calcc = CalculateBrain(height: height, weight: weight);
              Navigator.push(context, MaterialPageRoute(builder: (context)=>ResultPage(
                bmiResult: calcc.calculateBmI(),
                bmiText: calcc.getResult(),
                interpretation: calcc.getInterpretation(),
              ),),);
            },
            buttonText: ('Calculate'),
          ),
        ],
      ),
    );
  }
}

