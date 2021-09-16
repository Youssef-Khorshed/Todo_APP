import 'package:flutter/material.dart';

class Registeration extends StatelessWidget {
  const Registeration({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        leading: Icon(Icons.arrow_back,color: Colors.grey,),
      ),
    body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text('Lets Get Started!',textAlign: TextAlign.center,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 37),)
            ,Padding(
              padding: const EdgeInsetsDirectional.only(start: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [

                  Expanded(
                    child: Text('create an account of Q Alliure to get all lectures!',
                      textAlign: TextAlign.start,style: TextStyle(color: Colors.grey,fontWeight: FontWeight.bold,fontSize: 15),),
                  )
                ],),
            )
            ,SizedBox(height: 40,)
            ,TextFormField(
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                  hintText: 'Name',
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
            ,TextFormField(
              keyboardType: TextInputType.emailAddress,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Email',
                  prefixIcon: Icon( Icons.email),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                  )

              ),
            )
            ,SizedBox(height: 10,)
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
            ,TextFormField(
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration: InputDecoration(
                  hintText: 'Confirm Password',
                  prefixIcon: Icon( Icons.lock),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30)
                  )

              ),
            )
            ,SizedBox(height: 20,)
            ,Row(mainAxisAlignment: MainAxisAlignment.center,children: [
              Container(
                  width: 200,
                  decoration: BoxDecoration(color: Colors.red,borderRadius: BorderRadius.circular(20)),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: MaterialButton(onPressed: (){},child: Text('Create',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold))))
            ],),
            Row(
              children: [
                Text('Already have account ?',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)
                ,TextButton(onPressed: (){}, child: Text('Sign in',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),))
              ],
            )
          ]
          ,
        ),
      ),
    ),

    );
  }
}
