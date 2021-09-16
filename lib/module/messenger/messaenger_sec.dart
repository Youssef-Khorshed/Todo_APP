import 'package:flutter/material.dart';

class Messenger extends StatelessWidget {
  const Messenger({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color(0xffEEEEEE) ,
      appBar:AppBar(
        backgroundColor: Color(0xffEEEEEE),
        elevation: 0,
        titleSpacing: 20,
        title: Row(
          children: [
            CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage('assets/11.jpeg'),
              backgroundColor: Colors.black,
            ),
            SizedBox(width: 10,),
            Text('Chats',style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        )
      ,actions: [
        CircleAvatar(child: IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt))),
        SizedBox(width: 10,),
        CircleAvatar(child: IconButton(onPressed: (){}, icon: Icon(Icons.edit)))

      ],

      ) ,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Expanded(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10.0),
                  decoration: BoxDecoration(
                      color: Color(0xffEFB7B7),
                      borderRadius: BorderRadius.circular(20)
                  ),
                  child: Row(
                    children: [
                      Icon(Icons.search),
                      SizedBox(width: 5,),
                      Text('Search...',style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),
                SizedBox(height: 10,),
                /*
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Container(
                        width:60 ,
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [

                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/14.jpeg')
                                  ,
                                  radius: 30,
                                ),
                                CircleAvatar(backgroundColor: Colors.green,radius: 7,)
                              ],
                            )
                            ,Text('Youssef Mohammed',maxLines: 2,overflow:TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold),)
                          ],

                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width:60 ,
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [

                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/14.jpeg')
                                  ,
                                  radius: 30,
                                ),
                                CircleAvatar(backgroundColor: Colors.green,radius: 7,)
                              ],
                            )
                            ,Text('Youssef Mohammed',maxLines: 2,overflow:TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold),)
                          ],

                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width:60 ,
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [

                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/14.jpeg')
                                  ,
                                  radius: 30,
                                ),
                                CircleAvatar(backgroundColor: Colors.green,radius: 7,)
                              ],
                            )
                            ,Text('Youssef Mohammed',maxLines: 2,overflow:TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold),)
                          ],

                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width:60 ,
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [

                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/14.jpeg')
                                  ,
                                  radius: 30,
                                ),
                                CircleAvatar(backgroundColor: Colors.green,radius: 7,)
                              ],
                            )
                            ,Text('Youssef Mohammed',maxLines: 2,overflow:TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold),)
                          ],

                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width:60 ,
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [

                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/14.jpeg')
                                  ,
                                  radius: 30,
                                ),
                                CircleAvatar(backgroundColor: Colors.green,radius: 7,)
                              ],
                            )
                            ,Text('Youssef Mohammed',maxLines: 2,overflow:TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold),)
                          ],

                        ),
                      ),
                      SizedBox(width: 10,),
                      Container(
                        width:60 ,
                        child: Column(
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [

                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/14.jpeg')
                                  ,
                                  radius: 30,
                                ),
                                CircleAvatar(backgroundColor: Colors.green,radius: 7,)
                              ],
                            )
                            ,Text('Youssef Mohammed',maxLines: 2,overflow:TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold),)
                          ],

                        ),
                      ),
                      SizedBox(width: 10,),

                    ],
                  ),
                ),
                 */
                /*
                SizedBox(height: 10,),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [

                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/14.jpeg')
                                  ,
                                  radius: 30,
                                ),
                                CircleAvatar(backgroundColor: Colors.green,radius: 7,)
                              ],
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Youssef Mohamed Youssef Mohamed Youssef MohamedYoussef MohamedYoussef MohamedYoussef Mohamed',
                                    overflow: TextOverflow.ellipsis
                                    ,maxLines: 1,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text('hellohellohellohellohellohellohellohellohellohellohellohellohellohello',
                                          overflow: TextOverflow.ellipsis
                                          ,maxLines: 1,
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                        child: CircleAvatar(backgroundColor:Color(0xffEFB7B7) ,radius: 5,),
                                      ),
                                      Text('11 pm',
                                        overflow: TextOverflow.ellipsis
                                        ,maxLines: 1,
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [

                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/14.jpeg')
                                  ,
                                  radius: 30,
                                ),
                                CircleAvatar(backgroundColor: Colors.green,radius: 7,)
                              ],
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Youssef Mohamed Youssef Mohamed Youssef MohamedYoussef MohamedYoussef MohamedYoussef Mohamed',
                                    overflow: TextOverflow.ellipsis
                                    ,maxLines: 1,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text('hellohellohellohellohellohellohellohellohellohellohellohellohellohello',
                                          overflow: TextOverflow.ellipsis
                                          ,maxLines: 1,
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                        child: CircleAvatar(backgroundColor:Color(0xffEFB7B7) ,radius: 5,),
                                      ),
                                      Text('11 pm',
                                        overflow: TextOverflow.ellipsis
                                        ,maxLines: 1,
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [

                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/14.jpeg')
                                  ,
                                  radius: 30,
                                ),
                                CircleAvatar(backgroundColor: Colors.green,radius: 7,)
                              ],
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Youssef Mohamed Youssef Mohamed Youssef MohamedYoussef MohamedYoussef MohamedYoussef Mohamed',
                                    overflow: TextOverflow.ellipsis
                                    ,maxLines: 1,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text('hellohellohellohellohellohellohellohellohellohellohellohellohellohello',
                                          overflow: TextOverflow.ellipsis
                                          ,maxLines: 1,
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                        child: CircleAvatar(backgroundColor:Color(0xffEFB7B7) ,radius: 5,),
                                      ),
                                      Text('11 pm',
                                        overflow: TextOverflow.ellipsis
                                        ,maxLines: 1,
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [

                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/14.jpeg')
                                  ,
                                  radius: 30,
                                ),
                                CircleAvatar(backgroundColor: Colors.green,radius: 7,)
                              ],
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Youssef Mohamed Youssef Mohamed Youssef MohamedYoussef MohamedYoussef MohamedYoussef Mohamed',
                                    overflow: TextOverflow.ellipsis
                                    ,maxLines: 1,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text('hellohellohellohellohellohellohellohellohellohellohellohellohellohello',
                                          overflow: TextOverflow.ellipsis
                                          ,maxLines: 1,
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                        child: CircleAvatar(backgroundColor:Color(0xffEFB7B7) ,radius: 5,),
                                      ),
                                      Text('11 pm',
                                        overflow: TextOverflow.ellipsis
                                        ,maxLines: 1,
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [

                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/14.jpeg')
                                  ,
                                  radius: 30,
                                ),
                                CircleAvatar(backgroundColor: Colors.green,radius: 7,)
                              ],
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Youssef Mohamed Youssef Mohamed Youssef MohamedYoussef MohamedYoussef MohamedYoussef Mohamed',
                                    overflow: TextOverflow.ellipsis
                                    ,maxLines: 1,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text('hellohellohellohellohellohellohellohellohellohellohellohellohellohello',
                                          overflow: TextOverflow.ellipsis
                                          ,maxLines: 1,
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                        child: CircleAvatar(backgroundColor:Color(0xffEFB7B7) ,radius: 5,),
                                      ),
                                      Text('11 pm',
                                        overflow: TextOverflow.ellipsis
                                        ,maxLines: 1,
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [

                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/14.jpeg')
                                  ,
                                  radius: 30,
                                ),
                                CircleAvatar(backgroundColor: Colors.green,radius: 7,)
                              ],
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Youssef Mohamed Youssef Mohamed Youssef MohamedYoussef MohamedYoussef MohamedYoussef Mohamed',
                                    overflow: TextOverflow.ellipsis
                                    ,maxLines: 1,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text('hellohellohellohellohellohellohellohellohellohellohellohellohellohello',
                                          overflow: TextOverflow.ellipsis
                                          ,maxLines: 1,
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                        child: CircleAvatar(backgroundColor:Color(0xffEFB7B7) ,radius: 5,),
                                      ),
                                      Text('11 pm',
                                        overflow: TextOverflow.ellipsis
                                        ,maxLines: 1,
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [

                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/14.jpeg')
                                  ,
                                  radius: 30,
                                ),
                                CircleAvatar(backgroundColor: Colors.green,radius: 7,)
                              ],
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Youssef Mohamed Youssef Mohamed Youssef MohamedYoussef MohamedYoussef MohamedYoussef Mohamed',
                                    overflow: TextOverflow.ellipsis
                                    ,maxLines: 1,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text('hellohellohellohellohellohellohellohellohellohellohellohellohellohello',
                                          overflow: TextOverflow.ellipsis
                                          ,maxLines: 1,
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                        child: CircleAvatar(backgroundColor:Color(0xffEFB7B7) ,radius: 5,),
                                      ),
                                      Text('11 pm',
                                        overflow: TextOverflow.ellipsis
                                        ,maxLines: 1,
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Stack(
                              alignment: Alignment.bottomRight,
                              children: [

                                CircleAvatar(
                                  backgroundImage: AssetImage('assets/14.jpeg')
                                  ,
                                  radius: 30,
                                ),
                                CircleAvatar(backgroundColor: Colors.green,radius: 7,)
                              ],
                            ),
                            SizedBox(width: 10,),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Youssef Mohamed Youssef Mohamed Youssef MohamedYoussef MohamedYoussef MohamedYoussef Mohamed',
                                    overflow: TextOverflow.ellipsis
                                    ,maxLines: 1,
                                    style: TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  Row(
                                    children: [
                                      Expanded(
                                        child: Text('hellohellohellohellohellohellohellohellohellohellohellohellohellohello',
                                          overflow: TextOverflow.ellipsis
                                          ,maxLines: 1,
                                          style: TextStyle(fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                                        child: CircleAvatar(backgroundColor:Color(0xffEFB7B7) ,radius: 5,),
                                      ),
                                      Text('11 pm',
                                        overflow: TextOverflow.ellipsis
                                        ,maxLines: 1,
                                        style: TextStyle(fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 10,),
                      ],
                    ),
                  ),
                ),
*/
                Container(
                  height: 100,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                      itemBuilder: (context,index)=>story()
                      , separatorBuilder:(context,index)=> SizedBox(width: 10,)
                      , itemCount: 15),
                ),
                SizedBox(height: 10,),
                ListView.separated(
                     shrinkWrap: true,
                    physics:NeverScrollableScrollPhysics() ,
                      itemBuilder: (context,index)=>item()
                      , separatorBuilder:(context,index)=> SizedBox(height: 10,)
                      , itemCount: 15),


              ],
            ),
          ),
        ),
      ),
    );
  }
  Widget story()=>Container(
    width:60 ,
    child: Column(
      children: [
        Stack(
          alignment: Alignment.bottomRight,
          children: [

            CircleAvatar(
              backgroundImage: AssetImage('assets/14.jpeg')
              ,
              radius: 30,
            ),
            CircleAvatar(backgroundColor: Colors.green,radius: 7,)
          ],
        )
        ,Text('Youssef Mohammed',maxLines: 2,overflow:TextOverflow.ellipsis,style: TextStyle(fontWeight: FontWeight.bold),)
      ],

    ),
  );
  Widget item()=>Row(
    children: [
      Stack(
        alignment: Alignment.bottomRight,
        children: [

          CircleAvatar(
            backgroundImage: AssetImage('assets/14.jpeg')
            ,
            radius: 30,
          ),
          CircleAvatar(backgroundColor: Colors.green,radius: 7,)
        ],
      ),
      SizedBox(width: 10,),
      Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Youssef Mohamed Youssef Mohamed Youssef MohamedYoussef MohamedYoussef MohamedYoussef Mohamed',
              overflow: TextOverflow.ellipsis
              ,maxLines: 1,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Expanded(
                  child: Text('hellohellohellohellohellohellohellohellohellohellohellohellohellohello',
                    overflow: TextOverflow.ellipsis
                    ,maxLines: 1,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 10),
                  child: CircleAvatar(backgroundColor:Color(0xffEFB7B7) ,radius: 5,),
                ),
                Text('11 pm',
                  overflow: TextOverflow.ellipsis
                  ,maxLines: 1,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            )
          ],
        ),
      )
    ],
  );


}
