import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:follower_count/screens/profile_screen.dart';

import '../utils/graph_section.dart';
import '../utils/text_utils.dart';
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title:const Text("DashBoard",style: TextStyle(fontWeight: FontWeight.bold),),
        leading: Container(
          margin:const  EdgeInsets.all(5),
          height: 50,width: 50,decoration:const  BoxDecoration(
          shape: BoxShape.circle,
          gradient: LinearGradient(
              begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff30353b),
              Colors.black
            ]
          ),
          boxShadow: [
            //1f2229
            BoxShadow(
              color: Color(0xff3b4046)
                ,offset: Offset(-5,-5),
              blurRadius: 20
            ),
            BoxShadow(
                color: Color(0xff1f2229)
                ,offset: Offset(5,5),
                blurRadius: 30
            )
          ]
        ),
          child:const  Icon(Icons.arrow_back_ios_new,size: 17,),

        ),
        actions: [

          InkWell(
            onTap: (){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ProfileScreen()));
            },
            child: Container(
              margin:const  EdgeInsets.all(5),
              height: 50,width: 50,
              decoration:const  BoxDecoration(
                shape: BoxShape.circle,
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Color(0xff30353b),
                      Colors.black
                    ]
                ),
                boxShadow: [
                  //1f2229
                  BoxShadow(
                      color: Color(0xff3b4046)
                      ,offset: Offset(-5,-5),
                      blurRadius: 20
                  ),
                  BoxShadow(
                      color: Color(0xff1f2229)
                      ,offset: Offset(5,5),
                      blurRadius: 30
                  )
                ]
            ),
              child:const  Icon(Icons.more_horiz,size: 17,),

            ),
          ),
         const  SizedBox(width: 10,),
        ],

      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const  TextUtils(text: "585k",size: 45,),
            const  TextUtils(text: "Received All-Time",size:15,color:  Color(0xff757982),),
         const Spacer(),
            Container(
              padding: const EdgeInsets.only(bottom: 20),
              height: 250,
              width: double.infinity,
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(25),
               color:const  Color(0xff212528),
                  boxShadow:const  [
                    //1f2229
                    BoxShadow(
                        color: Color(0xff3b4046)
                        ,offset: Offset(-5,-5),
                        blurRadius: 20
                    ),
                    BoxShadow(
                        color: Color(0xff292c33)
                        ,offset: Offset(10,10),
                        blurRadius: 10
                    )
                  ]
              ),

              child:Column(
                children: [
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    const   Column(
                        children: [
                          TextUtils(text: "Post Views",size: 16,color: Color(0xff858891),),
                          SizedBox(height: 10,),
                          TextUtils(text: "2,543",size: 33,)
                        ],
                      ),
                      Container(
                        height: 50,width: 50,
                        decoration:  BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                            gradient:const  LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xfff3382e),
                                  Color(0xfffc7c4e)
                                ]
                            ),
                            boxShadow:const [

                              BoxShadow(
                                  color: Color(0xfff48964)
                                  ,offset: Offset(-2,-2),
                                  blurRadius: 10
                              ),
                              BoxShadow(
                                  color: Color(0xff1f2229)
                                  ,offset: Offset(5,5),
                                  blurRadius: 30
                              )
                            ]
                        ),
                        child:const  Icon(Icons.favorite,size: 30,color: Colors.white,),


                      )
                    ],
                  ),
                ),
                  Expanded(
                      child: SplineGraph())
                ],
              )
            ),
            const Spacer(),
            Container(
                padding: const EdgeInsets.all(20),
                height: 190,
                width: double.infinity,
                decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color:const  Color(0xff212528),
                    boxShadow:const  [
                      //1f2229
                      BoxShadow(
                          color: Color(0xff3b4046)
                          ,offset: Offset(-5,-5),
                          blurRadius: 20
                      ),
                      BoxShadow(
                          color: Color(0xff292c33)
                          ,offset: Offset(10,10),
                          blurRadius: 10
                      )
                    ]
                ),


                child:Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const   Column(
                          children: [
                            TextUtils(text: "Impression",size: 16,),
                            SizedBox(height: 10,),
                            TextUtils(text: "2,243",size: 33,)
                          ],
                        ),
                        Transform.scale(
                          scale: 1,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Theme.of(context).scaffoldBackgroundColor,
                                borderRadius: BorderRadius.circular(25),
                                boxShadow: [
                                  BoxShadow(
                                    color:Colors.black.withOpacity(0.7),
                                    offset:const  Offset(5.0,5.0),
                                    blurRadius: 10.0,
                                    spreadRadius: 0,
                                  ),
                                  BoxShadow(
                                    color:Colors.grey.shade800.withOpacity(0.5),
                                    offset:const  Offset(-3.0,-3.0),
                                    blurRadius: 5,
                                    spreadRadius: 0,
                                  ),
                                ]

                            ),
                            child: CupertinoSwitch(
                                activeColor: const Color(0xffff483c),

                                value: true,
                                onChanged: (value){


                                }),
                          ),
                        ),

                      ],
                    ),
                    Spacer(),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                 const  TextUtils(text: "23.5k",size: 16,),
                                 const  SizedBox(width: 20,),
                                  Container(
                                    height: 10,
                                    width: 100,
                                    decoration:  BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      gradient:const  LinearGradient(
                                          // begin: Alignment.topCenter,
                                          // end: Alignment.bottomCenter,
                                          colors: [
                                            Color(0xffb44ecd),
                                            Color(0xff93d6a3),
                                            Colors.white,
                                            Colors.white
                                          ]
                                      ),
                                        boxShadow: [
                                          BoxShadow(
                                            color:Colors.black.withOpacity(0.7),
                                            offset:const  Offset(5.0,5.0),
                                            blurRadius: 10.0,
                                            spreadRadius: 0,
                                          ),
                                          BoxShadow(
                                            color:Colors.grey.shade800.withOpacity(0.5),
                                            offset:const  Offset(-3.0,-3.0),
                                            blurRadius: 5,
                                            spreadRadius: 0,
                                          ),
                                        ]
                                  ),)

                                ],
                              ),
                              const SizedBox(height: 5,),
                              const  TextUtils(text: "Average Likes",size: 12,color: Color(0xff8d9099),),
                            ],
                          ),
                        ),

                        const Column(
                          children: [
                            Icon(Icons.trending_up,size: 40,color:  Color(0xffff483c),),
                            TextUtils(text: "32.93%",size: 16,),
                          ],
                        )

                      ],
                    )
                  ],
                )
            ),
            const Spacer(),

          ],
        ),
      ),

    );
  }
}
