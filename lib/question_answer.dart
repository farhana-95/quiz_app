import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'controller/appcontroller.dart';

class Questions extends StatefulWidget {
  const Questions({Key? key}) : super(key: key);

  @override
  State<Questions> createState() => _QuestionsState();
}

class _QuestionsState extends State<Questions> {
  var controller = Get.put(AppController());
  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Padding(
        padding: const EdgeInsets.only(left: 100),
        child: Text('Quiz'),
      ),),
      body:Center(
        child: Column(
          children: [
            Expanded(child: Obx((){
              return
              //   controller.postloading.value?
              // Center(child: CircularProgressIndicator(),):
      ListView.builder(itemCount: controller.getposts.value.ques?.length,
      itemBuilder: (context,index){
            var item = controller.getposts.value.ques?[index];
            return
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:<Widget> [
              Row(children: [
                Container(
                    padding:EdgeInsets.only(left: 53,top: 30),
              child: Text('Question: ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
                Container(
                    padding:EdgeInsets.only(left: 110,top: 30),
                    child: Text('Score: ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
              ],),
              SizedBox(height: 20,),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(6)),
                color:Color(0x8795E0FF), ),
                // color: Color(0xFFB3F5F0),
                height: 350,
                width: 330,
                child: Card(
                  child: Column(
                    children: [
                      Text('Point'),
                      SizedBox(height: 10,),
                      Image.network(item?.imgUrl ?? 'Null'),
                      SizedBox(height: 10,),
                      Text(item?.question?? "")
                    ],
                  ),
                ),
              ),
              SizedBox(height: 25,),
              Column(
                children: <Widget>[
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        color:Color(0x8795E0FF), ),
                      // color: Color(0xFFB3F5F0),
                      height: 40,
                      width: 300,
                      child: Text('a.')),
                  SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        color:Color(0x8795E0FF), ),
                      height: 40,
                      width: 300,
                      child: Text('b.')),
                  SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        color:Color(0x8795E0FF), ),
                      height: 40,
                      width: 300,
                      child: Text('c.')),
                  SizedBox(height: 10,),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                        color:Color(0x8795E0FF), ),
                      height: 40,
                      width: 300,
                      child: Text('d.')),
                ],
              )
            ],
          ),
        );
      });
      },
      ),
            )],
        ),
      )
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.start,
      //     children:<Widget> [
      //       Row(children: [
      //         Container(
      //             padding:EdgeInsets.only(left: 53,top: 30),
      //       child: Text('Question: ',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),)),
      //         Container(
      //             padding:EdgeInsets.only(left: 110,top: 30),
      //             child: Text('Score: ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),)),
      //       ],),
      //       SizedBox(height: 20,),
      //       Container(
      //         decoration: BoxDecoration(
      //           borderRadius: BorderRadius.all(Radius.circular(6)),
      //         color:Color(0x8795E0FF), ),
      //         // color: Color(0xFFB3F5F0),
      //         height: 350,
      //         width: 330,
      //         child: Card(
      //           child: Column(
      //             children: [
      //               Text('Point'),
      //               SizedBox(height: 10,),
      //               Container(
      //                 height: 200,
      //                 width: 280,
      //                 // height: MediaQuery.of(context).size.width +5,
      //                 //   width: MediaQuery.of(context).size.width +5,
      //                   color: Colors.brown,
      //                   child: Text('Photo')),
      //               SizedBox(height: 10,),
      //               Text('Question')
      //             ],
      //           ),
      //         ),
      //       ),
      //       SizedBox(height: 25,),
      //       Column(
      //         children: <Widget>[
      //           Container(
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.all(Radius.circular(6)),
      //                 color:Color(0x8795E0FF), ),
      //               // color: Color(0xFFB3F5F0),
      //               height: 40,
      //               width: 300,
      //               child: Text('a.')),
      //           SizedBox(height: 10,),
      //           Container(
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.all(Radius.circular(6)),
      //                 color:Color(0x8795E0FF), ),
      //               height: 40,
      //               width: 300,
      //               child: Text('b.')),
      //           SizedBox(height: 10,),
      //           Container(
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.all(Radius.circular(6)),
      //                 color:Color(0x8795E0FF), ),
      //               height: 40,
      //               width: 300,
      //               child: Text('c.')),
      //           SizedBox(height: 10,),
      //           Container(
      //               decoration: BoxDecoration(
      //                 borderRadius: BorderRadius.all(Radius.circular(6)),
      //                 color:Color(0x8795E0FF), ),
      //               height: 40,
      //               width: 300,
      //               child: Text('d.')),
      //         ],
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}
