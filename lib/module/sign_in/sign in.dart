import 'package:flutter/material.dart';

class Register extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            width: double.infinity,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Image(image: AssetImage('assets/18.png'),width: 200,height: 200,),
                  Text('Welcomeback!',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 37),)
                  ,Padding(
                    padding: const EdgeInsetsDirectional.only(start: 40),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [

                      Expanded(
                        child: Text('Login in to your email account of Q Alliure!',
                          textAlign: TextAlign.start,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),),
                      )
                    ],),
                  )
                  ,SizedBox(height: 40,)
                  ,TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      hintText: 'Email',
                      prefixIcon: Icon( Icons.person),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                      )

                    ),
                  )
                  ,SizedBox(height: 20,)
                  ,TextFormField(
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: 'Password',
                        prefixIcon: Icon( Icons.lock),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30)
                        )

                    ),
                  )
                  ,SizedBox(height: 10,)
                ,Row(mainAxisAlignment: MainAxisAlignment.end,children: [Text('Forget password ?',
                    textAlign: TextAlign.start,style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 20),)],)
                  ,SizedBox(height: 20,),
                  Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                    Container(
                      width: 200,
                      decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(20)),
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        child: MaterialButton(onPressed: (){},child: Text('Login',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold))))
                  ],),
                Text('Continue with',style: TextStyle(color: Colors.grey,fontSize: 20,fontWeight: FontWeight.bold),)
                 ,Row(mainAxisAlignment: MainAxisAlignment.center,children: [
                        Image(width: 150,height: 100,image: AssetImage('assets/19.png')),
                       Image(width: 150,height: 100,image: AssetImage('assets/21.png'))
                  ],),
                  Row(
                    children: [
                      Text('Do not have account ?',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
                     ,TextButton(onPressed: (){}, child: Text('Register',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))
                    ],
                  )
                ]
                ,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
