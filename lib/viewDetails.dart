import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ViewDetails extends StatefulWidget {
  final name;
  final email;
  final mobNum;
  final id;
  final job;
  const ViewDetails({Key? key, this.name, this.email, this.mobNum, this.id, this.job}) : super(key: key);

  @override
  State<ViewDetails> createState() => _ViewDetailsState();
}

class _ViewDetailsState extends State<ViewDetails> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.teal.shade400,
          centerTitle: true,
          title: Text("USER DETAILS"),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios_new_rounded), onPressed: () {
              Navigator.pop(context);
          },
          ),
        ),
        body:Center(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h,vertical: 20.h),
        height: 350.h,
        width: 330.w,
        decoration:  BoxDecoration(
          border: Border.all(color: Colors.black,width: 2.w),
          borderRadius: BorderRadius.circular(12),
          color: Colors.grey.shade400
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
          Text("Name    :  ${widget.name}",style: TextStyle(
            fontWeight: FontWeight.w500,fontSize: 20.sp
          ),),
          Text("Mobile   :  ${widget.mobNum}",style: TextStyle(
            fontWeight: FontWeight.w500,fontSize: 20.sp
          ),),
          Text("Email    :  ${widget.email}",style: TextStyle(
            fontWeight: FontWeight.w500,fontSize: 20.sp
          ),),
          Text("Job       :  ${widget.job}",style: TextStyle(
                fontWeight: FontWeight.w500,fontSize: 20.sp
            ),),
          Text(" Id          :  ${widget.id}",style: TextStyle(
                fontWeight: FontWeight.w500,fontSize: 20.sp
            ),),
        ],),
      ),
    )));
  }
}
