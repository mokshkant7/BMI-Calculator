import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'IconContent.dart';
import 'ReusableCard.dart';

// Enums are known as enumeration : the action of establishing the number of something.

const bottomWidgetHeight = 80.0;
const cardColourValue = Color(0xFF1D1E33);
const InaciveCardValue = Color(0xFF111328);
const bottomContainerColour = Color(0xFFEB1555);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = InaciveCardValue;
  Color femaleCardColor = InaciveCardValue;

  //male card pressed
  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == InaciveCardValue) {
        maleCardColor = cardColourValue;
        femaleCardColor = InaciveCardValue;
      } else {
        maleCardColor = InaciveCardValue;
      }
    }
    //female card pressed
    if (gender == 2) {
      if (femaleCardColor == InaciveCardValue) {
        femaleCardColor = cardColourValue;
        maleCardColor = InaciveCardValue;
      } else {
        femaleCardColor = InaciveCardValue;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColor,
                      cardChild: iconContent(
                        iconName: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColor,
                      cardChild: iconContent(
                        iconName: FontAwesomeIcons.venus,
                        label: 'FEMALE',
                      ),
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: ReusableCard(
                colour: cardColourValue,
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: cardColourValue,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: cardColourValue,
                  ),
                ),
              ],
            )),
            Container(
              color: bottomContainerColour,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomWidgetHeight,
            ),
          ],
        ));
  }
}
