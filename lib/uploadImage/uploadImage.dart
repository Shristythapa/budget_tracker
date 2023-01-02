import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class PictureUpload extends StatefulWidget {
  const PictureUpload({super.key});

  @override
  State<PictureUpload> createState() => _PictureUploadState();
}

class _PictureUploadState extends State<PictureUpload> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 150,
                height: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color(0xFF296157),
                ),
                child: Container(
                  margin: EdgeInsets.all(6),
                  child: CircleAvatar(
                    radius: 20,
                    backgroundImage:
                        AssetImage("images/dummyProfileImage.jfif"),
                  ),
                ),
              ),
               Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 219, 220, 220),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    children: [
                      Icon(
                        Icons.person,
                        color: Color.fromARGB(255, 158, 158, 158),
                        size: 24.0,
                      ),
                      SizedBox(width: 20),
                      Expanded(
                          child: Text(
                        "Rin Okumura",
                      ))
                    ],
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 219, 220, 220),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Row(
                    children: [
                      Icon(
                        Icons.mail,
                        color: Color.fromARGB(255, 158, 158, 158),
                        size: 24.0,
                      ),
                      SizedBox(width: 20),
                      Expanded(
                          child: Text(
                        "rin@gmail.com",
                      ))
                    ],
                  ),
                ),
              ),
              Padding(
                 padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                child: Container(
                  width:MediaQuery.of(context).size.height*0.6,
                  height:50,
                  child: ElevatedButton(onPressed:() {
                    
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF296157),
                    foregroundColor: Color(0XFFFFFFFF)
                  ),
                  child: Text("Upload Image",style: TextStyle(fontSize:20),)),
                ),
              ),
               Padding(
                 padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
                 child: Container(
                  width:MediaQuery.of(context).size.height*0.6,
                  height:50,
                  child: ElevatedButton(onPressed:() {
                    
                  }, 
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF77ABA2),
                    foregroundColor: Color(0XFFFFFFFF)
                  ),
                  child: Text("Cancel",style: TextStyle(fontSize:20),)),
                             ),
               )
             
            ],
          ),
        ),
      ),
    );
  }
}
