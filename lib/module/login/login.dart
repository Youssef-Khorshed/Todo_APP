import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tst_2021/shared/component/component.dart';
class Home_Screen extends StatefulWidget {
  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  @override
  void initState() {
    super.initState();
  }
  var email = TextEditingController();

  var pass = TextEditingController();

  bool check_eye  = true;

  Icon eye_icon =  Icon (Icons.remove_red_eye);
  var keyform = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffEEEEEE),
      appBar: AppBar(
        backgroundColor:Color(0xffEEEEEE) ,
        elevation: 0,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            color: Color(0xffEEEEEE),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Form(
                key: keyform,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Login',
                      style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      child: textformfield(
                        validator: (value){
                          if(value!.isEmpty){return 'wrong Email';}
                          else return null;
                        },

                        text: 'Email',
                        pass: email,
                        keyboard_type: TextInputType.emailAddress,
                        prefix_icon: Icon(Icons.email),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: textformfield(
                        validator: (value){
                          setState(() {
                          });
                          if(value!.isEmpty){return 'wrong password';}
                          return null;

                        },
                        suffix_icon: check_eye ?  Icons.remove_red_eye : Icons.visibility_off ,
                        suffix_hand: (){
                          setState(() {
                            check_eye  = !check_eye;
                          });
                        },
                        text: 'Password',
                        password: check_eye,
                        pass: pass,
                        keyboard_type: TextInputType.visiblePassword,
                        prefix_icon: Icon( Icons.lock),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      child: DefaultButton(
                        text: 'Register',
                        controll: (){
                          if(keyform.currentState!.validate()) {
                            Fluttertoast.showToast(
                                msg: email.text + " " + pass.text,
                                toastLength: Toast.LENGTH_SHORT,
                                gravity: ToastGravity.CENTER,
                                timeInSecForIosWeb: 1,
                                backgroundColor: Colors.red,
                                textColor: Colors.white,
                                fontSize: 30.0
                            );
                          }
                          },
                      ),
                    )

                  ,Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Do not have account'),
                        TextButton(onPressed: (){},
                          child:Text('Register'),)
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
