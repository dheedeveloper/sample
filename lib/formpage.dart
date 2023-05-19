import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sample/homepage.dart';



class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  @override
  Widget build(BuildContext context) {
    return  SafeArea(child: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal.shade200,
        centerTitle: true,
       leading: IconButton(
           icon: Icon(Icons.arrow_back_ios_new_rounded), onPressed: () {
             Navigator.pop(context);
       },
           ),
        title: const Text("ADD NEW TICKET"),
      ),
      resizeToAvoidBottomInset: false,
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 20.h),
        height: double.infinity.h,
        width: double.infinity.w,
        child:  Column(children: [
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Enter name",
                labelText: "Name",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(12),
                ),
                disabledBorder:OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.black)
                ) ,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.black)
                  )
              ),
            ),
          ),
          SizedBox(height: 25.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Enter email",
                  labelText: "E mail",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  disabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.black)
                  ) ,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.black)
                  )
              ),
            ),
          ),
          SizedBox(height: 25.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Mobile number",
                  labelText: "Number",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  disabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.black)
                  ) ,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.black)
                  )
              ),
            ),
          ),
          SizedBox(height: 25.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Your job",
                  labelText: "job",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  disabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.black)
                  ) ,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.black)
                  )
              ),
            ),
          ),
          SizedBox(height: 25.h,),
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 20.w),
            child: TextField(
              decoration: InputDecoration(
                  hintText: "Your address",
                  labelText: "Address",
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  disabledBorder:OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.black)
                  ) ,
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),borderSide: BorderSide(color: Colors.black)
                  )
              ),
            ),
          ),
          const Spacer(),
          ElevatedButton(
              onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const HomePage()));
          },style:
          ElevatedButton.styleFrom(
              backgroundColor: Colors.teal.shade200,
              fixedSize: Size(120.w, 35.h),
              side: const BorderSide(color: Colors.black,width: 1),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15))
          ), child: Text("SUBMIT",style: TextStyle(color: Colors.black,fontSize: 16.sp),))
        ],),
      ),
    ));
  }
}
