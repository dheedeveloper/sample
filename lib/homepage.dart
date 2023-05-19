import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample/formpage.dart';
import 'package:sample/viewDetails.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<userDetails> details  = [
    userDetails("Deena", 1, "deena@gmail.com", 1234567890, "flutter"),
    userDetails("fazil", 2, "fazil@gmail.com", 1234567890, "devloper"),
    userDetails("Nethaji", 3, "nethaji@gmail.com", 1234567890, "angular"),
    userDetails("ajith", 4, "ajith@gmail.com", 1234567890, "backend"),
    userDetails("surya", 5, "surya@gmail.com", 1234567890, "php"),
    userDetails("Vijay", 6,"vijay@gmail.com", 1234567890, "developer"),
    userDetails("parthi", 7, "parthi@gmail.com", 1234567890, "sql"),
    userDetails("Mani", 8, "mani@gmail.com", 1234567890, "developer"),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      appBar: null,
      body: Padding(
        padding:  EdgeInsets.symmetric(vertical: 20.h),
        child: ListView.builder(
          itemCount: details.length,
          itemBuilder: (context, index) {
          return Padding(
            padding:  EdgeInsets.only(top: 5.h,bottom: 5.h,left: 17.w,right: 10.w),
            child: Container(
              padding: EdgeInsets.all(8.h),
              width: 300.w,height: 100.h,
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              border: Border.all(),borderRadius: BorderRadius.circular(15)
            ),
            child: Row(children: [
               Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   Text("Ticket  ${index + 1}",style:  TextStyle(
                     fontSize: 18.sp
                   ),),
                   Text(details[index].name,style:  TextStyle(
                     fontSize: 18.sp
                   ),),
                 ],
               ),
              const Spacer(),
              Column(children: [
                ElevatedButton(onPressed: () {

                },style:
                ElevatedButton.styleFrom(
                    side: const BorderSide(color: Colors.black,width: 0.4),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ), child:const Text("Print")),
                ElevatedButton(onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) =>
                 ViewDetails(
                  email:details[index].email ,
                  id:details[index].bookingId ,
                  job: details[index].job,
                  mobNum:details[index].mobNum ,
                  name: details[index].name,
                ) ));
                },style:
                ElevatedButton.styleFrom(
                  side: const BorderSide(color: Colors.black,width: 0.4),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ), child:const Text("View"))
              ],)
            ],),),
          );
        },),
      ),
      floatingActionButton: Tooltip(
         padding: EdgeInsets.symmetric(horizontal:20.w,vertical: 10.h),
        message: "Add New Ticket",
        child: FloatingActionButton(
          backgroundColor: Colors.black,
          child: const Icon(Icons.add,color: Colors.white,),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const FormPage()));
        },),
      ),
    ));
  }
}

class userDetails{
  String name;
  int bookingId;
  String email;
  int mobNum;
  String job;

  userDetails(this.name, this.bookingId, this.email, this.mobNum, this.job);
}
