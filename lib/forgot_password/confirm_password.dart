import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../common/custom_button.dart';
import '../common/custom_icon.dart';
import '../common/custom_textfield.dart';

class ConfirmPAsswordWidget extends StatefulWidget {
  const ConfirmPAsswordWidget({super.key});

  @override
  State<ConfirmPAsswordWidget> createState() => _ConfirmPAsswordWidgetState();
}


class _ConfirmPAsswordWidgetState extends State<ConfirmPAsswordWidget> {
 
 TextEditingController password=new TextEditingController();
 bool showPassword=false;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color(0xFFA83D0E9),
      appBar: AppBar(
        backgroundColor: Color(0xFFA83D0E9),
        elevation:0,
        
          //   children: [

              leading: Center(
                
                child: Container(
                  child: CustomIcon(
                    icon:Icons.arrow_back,
                    onPressed:(){
                      Navigator.of(context).pop();
                    },
                  ),
                ),

              ),

      ),
      body:Container(
        padding: EdgeInsets.symmetric(
          horizontal:25.0,
        ),
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
         children: [
           Container(
            //  width:245,
            //  height:41,
             padding:EdgeInsets.only(top:50,bottom:20),
             child: Text(
               "Change Password",
               style:TextStyle(
                 fontSize:32,
                 fontWeight: FontWeight.w400,
               )
             ),
           ),
              SizedBox(height:10),
              Container(
                height:41,
                // margin: EdgeInsets.all(1),
                decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
                child:TextFormField(
                  
                  controller:password,
                  obscureText: !showPassword,
                  decoration: InputDecoration(
                    border:InputBorder.none,
                    hintText:"New Password",
                    
                    suffixIcon: showPassword?
                    InkWell(
                      onTap: (){
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      child:Icon(Icons.panorama_fish_eye)
                    )
                    :
                    InkWell(
                      onTap: (){
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      child:Icon(Icons.remove_red_eye)
                    ),
                    filled:true,
                contentPadding: EdgeInsets.symmetric(
                  horizontal:20,
                  vertical:13,
                ),

                  ),
                )

              ),
              SizedBox(height:20),
              Container(
                height:41,
                // margin: EdgeInsets.all(1),
                decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
                child:TextFormField(
                  controller:password,
                  obscureText: !showPassword,
                  decoration: InputDecoration(
                    border:InputBorder.none,
                    hintText:"Confirm Password",
                    
                    suffixIcon: showPassword?
                    InkWell(
                      onTap: (){
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      child:Icon(Icons.panorama_fish_eye)
                    )
                    :
                    InkWell(
                      onTap: (){
                        setState(() {
                          showPassword = !showPassword;
                        });
                      },
                      child:Icon(Icons.remove_red_eye)
                    ),
                    filled:true,
                contentPadding: EdgeInsets.symmetric(
                  horizontal:20,
                  vertical:13,
                ),

                  ),
                )

              ),
              SizedBox(height:30),
                CustomButton(
                  title: "Confirm",
                  onPressed: (){
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context)=>),
                    // );
                    // print("Reset");
                  }
                  )
         ],
        ),
      )
    );
  }
}