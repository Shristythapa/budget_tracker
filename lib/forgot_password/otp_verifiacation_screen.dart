import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';


import '../common/custom_button.dart';
import '../common/custom_icon.dart';
import 'confirm_password.dart';


class OtpVerifyWidget extends StatefulWidget {
  const OtpVerifyWidget({super.key});

  @override
   State<OtpVerifyWidget> createState() => _OtpVerifyWidgetState();
}
class _OtpVerifyWidgetState extends State<OtpVerifyWidget> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
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
        padding:EdgeInsets.symmetric(horizontal: 25.0),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:[
            Container(
              padding:EdgeInsets.only(top:50,bottom:20),
              child: Text(
                "Verify OTP",
                style:TextStyle(
                 fontSize:32,
                 fontWeight: FontWeight.w400,
                )
                ),
            ),
            // SizedBox(height:15),
            
            Text(
              "Please enter 5 digit OTP code",
              style:TextStyle(
                fontSize:15,
                fontWeight: FontWeight.w400,
              ),
              ),
              SizedBox(height:30),
              PinCodeTextField(
  length: 5,
  obscureText: false,
  appContext: context,
  animationType: AnimationType.fade,
  pinTheme: PinTheme(
    shape: PinCodeFieldShape.box,
    borderRadius: BorderRadius.circular(5),
    fieldHeight: 58,
    fieldWidth: 58,
    activeFillColor: Colors.white,
    activeColor: Colors.red,
    inactiveColor: Colors.white,
    inactiveFillColor: Colors.white,
    selectedColor: Colors.red,
    selectedFillColor: Colors.white,
  ),
  animationDuration: Duration(milliseconds: 300),
  enableActiveFill: true,

  onCompleted: (v) {
    print("Completed");
  },
  onChanged: (value) {
  
  },

),

SizedBox(height:20),

       CustomButton(
         title: "Verify OTP",
         onPressed: () {
          Navigator.push(
            context,
             MaterialPageRoute(
               builder: (context)=>ConfirmPAsswordWidget(),
             )
             );
         },
         ),
         SizedBox(height:20),

       Container(
         margin:EdgeInsets.only(left:10),
         child: RichText(
                text: TextSpan(
                  text:"Didn't received any code ?",
                  style:TextStyle(
                    fontSize:15,
                    color:Color.fromARGB(255, 61, 60, 60),
                  ),
                  children:[
                    TextSpan(
                      text: "Resend code",
                      style:TextStyle(
                        color:Colors.red),
                      ),
                    
                  ]
                )
                ),
       )
          ],
        )
      )
    );
  }
}