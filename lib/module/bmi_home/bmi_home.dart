import 'package:flutter/material.dart';
import 'package:tst_2021/module/bmi_result/reult.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
  }
  bool? ismale;
  double height = 180;
  int weight = 80 ,age = 20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF0E5D8),
      appBar: AppBar(
        titleSpacing: 100,
        elevation: 0.0,
        title: Text('BMI Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            color: Color(0xFF75CFB8),
            child: Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: GestureDetector(
                      onTap:(){ setState(() {
                        ismale = true;
                      });},
                      child: Container(
                        decoration: BoxDecoration(color: ismale== true ? Color(0xFFF0E5D8) :Color(0xFFFFC478)
                            ,borderRadius: BorderRadius.circular(20)),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 100,
                            ),
                            Text('Male', style: TextStyle(fontSize: 30))
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(15),
                    child: GestureDetector(
                      onTap: (){ setState(() {
                        ismale = false;
                      });},
                      child: Container(
                        decoration: BoxDecoration(color: ismale== false ? Color(0xFFF0E5D8) :Color(0xFFFFC478)
                            ,borderRadius: BorderRadius.circular(20)),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Icon(
                              Icons.female,
                              size: 100,
                            ),
                            Text(
                              'Female',
                              style: TextStyle(fontSize: 30),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          )),
          Expanded(
            child: Container(
          //    color: Color(0xFFBBDFC8),
                color: Color(0xFF75CFB8),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Container(
                  decoration: BoxDecoration(color: Color(0xFFBBDFC8),
                      borderRadius: BorderRadius.circular(20)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,

                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,

                    children: [
                      Text('Height'
                          ,style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                      SizedBox(height: 10,),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        mainAxisAlignment: MainAxisAlignment.center,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text('${height.round()}',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                          Text('cm',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),

                        ],
                      ),
                      Slider(min:80 ,value: height,max:250 , onChanged: (value){setState(() {

                      }); height = value;})
                    ,
                    ],
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              color: Color(0xFF75CFB8),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(color: Color(0xFFFAFCFA),
                            borderRadius: BorderRadius.circular(20)),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Age',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                            Text('$age',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,

                            children: [
                              FloatingActionButton(heroTag: 'age++',onPressed: (){setState(() {

                              });age++;},mini: true,child: Icon(Icons.add_circle),)
                              , SizedBox(width: 10,),
                              FloatingActionButton(heroTag: 'age--',onPressed: (){setState(() {

                              });age--;},mini: true,child: Icon(Icons.remove_circle),)

                            ],
                          )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Container(
                        decoration: BoxDecoration(color: Color(0xFFFAFCFA),
                            borderRadius: BorderRadius.circular(20)),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: [
                            Text('Weight',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                            Text('$weight',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                FloatingActionButton(heroTag: 'weight++',onPressed: (){setState(() {

                                }); weight++;},mini: true,child: Icon(Icons.add_circle),)
                                , SizedBox(width: 10,),
                                FloatingActionButton(heroTag: 'w--',onPressed: (){setState(() {

                                }); weight--;},mini: true,child: Icon(Icons.remove_circle),)

                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  )

                ],
              ),
            ),
          ),
          Container(
            color: Color(0xFF75CFB8),
            width: double.infinity,
            child: Container(
              decoration: BoxDecoration(color: Color(0xFFF0E5D8),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20))),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: MaterialButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Result(
                    gender: ismale==true ?'Male': 'Female' ,
                     calc: ismale==true ? 1: 0.9 ,
                    age: age.round(),
                    weight: weight.round(),
                    height: height.round(),
                  )));
                },
                child: Text('Calculate',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold)),
              ),
            ),
          )
        ],
      ),
    );
  }
}
