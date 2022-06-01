import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'Reusable_card.dart';
import 'box_content.dart';
import 'Constants.dart';
import 'results_page.dart';



enum Gender{
  male,female,nun
}

Gender a=Gender.nun;

// void func(Gender a) {
//   if(a==Gender.male) {
//     if (colour1 == colourNotSelected) {
//       colour1 = colourSelected;
//       colour2 = colourNotSelected;
//       colorIcon1 = iconSelected;
//       colorIcon2 = iconNotSelected;
//     }
//     else{
//       colour1 = colourNotSelected;
//       colorIcon1 = iconNotSelected;
//     }
//   }
//   else if(a==Gender.female){
//     if (colour2 == colourNotSelected) {
//       colour2 = colourSelected;
//       colorIcon2 = iconSelected;
//       colour1 = colourNotSelected;
//       colorIcon1 = iconNotSelected;
//     }
//     else{
//       colour2 = colourNotSelected;
//       colorIcon2 = iconNotSelected;
//     }
//   }
//
// }

class BMI_calci extends StatefulWidget {
  const BMI_calci({Key? key}) : super(key: key);

  @override
  State<BMI_calci> createState() => _BMI_calciState();
  
}

class _BMI_calciState extends State<BMI_calci> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Color(0xFF090C22),
        title: Center(child: Text('BMI CALCULATOR')),
      ),
      body: Column(
        children: [
          Expanded(
            flex:2,
            child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      setState(() {
                        a=Gender.male;
                      });
                    },
                    child: ReusableCard(a==Gender.male? colourSelected:colourNotSelected,
                    BoxContent( Icons.male_outlined,'MALE',a==Gender.male? iconSelected:iconNotSelected),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                  onTap: (){
                setState(() {
                a=Gender.female;
                });
                },
                    child: ReusableCard(a==Gender.female? colourSelected:colourNotSelected,
                      BoxContent(Icons.female_outlined,'FEMALE',a==Gender.female? iconSelected:iconNotSelected),),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex:2,
            child: ReusableCard(colourNotSelected,
              Column(
                // crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('HEIGHT',
                  style: TxtStyl,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                      kheight.toString(),
                      style:txtstyl1,
                    ),
                      Text(
                        'cm',
                          style: TxtStyl
                      )
                  ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbShape: RoundSliderThumbShape(enabledThumbRadius: 12.0),
                      overlayShape: RoundSliderOverlayShape(overlayRadius: 28.0),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Color(0xFF8E8E99),
                      thumbColor: Color(0xFFEA1556),
                      overlayColor: Color(0x29EA1556)
                    ),
                    child: Slider(value: kheight.toDouble(),
                        min: 120.0,
                        max: 220.0,
                        onChanged: (double newValue) {
                          setState(() {
                            kheight=newValue.toInt();
                          });
                        }
                    ),
                  ),
                ],
              )
            ),
          ),
          Expanded(
            flex:2,
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(colourNotSelected,
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Text(
                          'WEIGHT',
                              style:TxtStyl
                        ),
                      ),
                      Flexible(
                        child: Text(
                          kweight.toString(),
                          style: txtstyl1
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: RoundIconButton(FontAwesomeIcons.minus,
                                    () {
                                  setState(() {
                                    kweight--;
                                  });
                                }
                            ),
                          ),
                          SizedBox(
                            width: 10.0,
                          ),
                          Flexible(
                            child: RoundIconButton(FontAwesomeIcons.plus,
                                    () {
                                  setState(() {
                                    kweight++;
                                  });
                                }
                            ),
                          ),
                        ],
                      )
                    ],
                  )),
                ),
                Expanded(
                  child: ReusableCard(colourNotSelected,
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Flexible(
                            child: Text(
                                'AGE',
                                style:TxtStyl
                            ),
                          ),
                          Flexible(
                            child: Text(
                                kage.toString(),
                                style: txtstyl1
                            ),
                          ),
                          SizedBox(
                            height: 10.0,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Flexible(
                                child: RoundIconButton(FontAwesomeIcons.minus,
                                () {
                                      setState(() {
                                        kage--;
                                      });
                                    }
                                ),
                              ),
                              SizedBox(
                                width: 10.0,
                              ),
                              Flexible(
                                child: RoundIconButton(FontAwesomeIcons.plus,
                                        () {
                                      setState(() {
                                        kage++;
                                      });
                                    }
                                ),
                              ),
                            ],
                          )
                        ],
                      )),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: GestureDetector(
              onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) =>
                  Results()
                )
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFEA1556),
                ),
                width: double.infinity,
                margin: EdgeInsets.only(top: 30.0),
                child: Center(
                  child: Text(
                    'CALCULATE YOUR BMI',
                  style: TextStyle(
                      color: Color(0xFFFFFFFF),
                      fontSize: 25.0,
                  ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class RoundIconButton extends StatelessWidget {
  RoundIconButton(@required this.iccon,@required this.onPress());
  final IconData iccon;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
        shape: CircleBorder(),
        fillColor: Color(0xFF343A49),
        constraints: BoxConstraints.tightFor(width:56.0 , height: 56.0),
        child:
        Icon(
          iccon,
          size: 30.0,
          color: Colors.white,
        ),
      onPressed :onPress,
    );
  }
}





// Container(
// margin: EdgeInsets.all(15),
// decoration:BoxDecoration(
// color: Color(0xFF1D1F33),
// borderRadius: BorderRadius.circular(10.0),
// ),
// ),
