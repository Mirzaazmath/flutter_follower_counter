import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../utils/text_utils.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: false,
        title:const Text("Insights",style: TextStyle(fontWeight: FontWeight.bold),),
        leading: InkWell(
          onTap: (){
            Navigator.pop(context);
          },
          child: Container(
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
            child:const  Icon(Icons.arrow_back_ios_new,size: 17,color: Colors.orange,),

          ),
        ),


      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                height: 150,
                width: 150,
                padding:const EdgeInsets.all(10),
                decoration: const  BoxDecoration(
                  shape: BoxShape.circle,
                    color:  Color(0xff212528),
                    boxShadow:  [

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
                ),child:const  CircleAvatar(
                backgroundImage: AssetImage("assets/profile.png"),
              ),
              ),
            ),
          const   Spacer(),
          const   Center(child:   TextUtils(text: "Dev_73arner",color: Color(0xfffb5e40),size: 22,)),
           const  SizedBox(height: 10,),
          const   Center(child:   TextUtils(text: "India",size:15,color:  Color(0xff757982),)),
             const   Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               const  TextUtils(text: "Context"),
             const    TextUtils(text: "Activity"),
                Container(
                  padding:const  EdgeInsets.all(12),
                  decoration: BoxDecoration(
                      color: const  Color(0xff212528),
                      borderRadius: BorderRadius.circular(10),
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
                    child: const TextUtils(text: "Audience"))

              ],
            ),
            const   Spacer(),
            const   Center(child:   TextUtils(text: "37,865",size: 50,)),
      const   Center(child:   TextUtils(text: "Followers",)),
            const   Spacer(),
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
                  const   TextUtils(text: "Growth of Total Followers",),

                 const Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        for(int i=1;i<=7;i++)...[

                          Column(
                            children: [
                              Container(
                                height: 100,
                                width: 15,
                                decoration: BoxDecoration(
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
                                    ],
                                  color:  Colors.purpleAccent.withOpacity(0.1*i),
                                  //color:Colors.purpleAccent.withOpacity(0.1*i),
                                  borderRadius: BorderRadius.circular(10)
                                ),
                              ),
                              TextUtils(text: i.toString(),size: 10,)
                            ],
                          )
                        ]
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
