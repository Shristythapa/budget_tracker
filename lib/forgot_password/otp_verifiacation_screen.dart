
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import '../common/custom_icon.dart';
import '../common/custom_button.dart';
import 'confirm_password.dart';
import 'forgot_password_screen.dart';


class OtpVerifyWidget extends StatefulWidget {
  const OtpVerifyWidget({super.key});

  @override
   State<OtpVerifyWidget> createState() => _OtpVerifyWidgetState();
}
class _OtpVerifyWidgetState extends State<OtpVerifyWidget> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
        padding:EdgeInsets.symmetric(horizontal: 14.0),
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
    activeFillColor: Color.fromARGB(248, 234, 236, 236),
    activeColor: Colors.white,
    inactiveColor: Color.fromARGB(248, 234, 236, 236),
    inactiveFillColor: Color.fromARGB(255, 245, 241, 241),
    selectedColor: Colors.white,
    selectedFillColor: Color.fromARGB(248, 234, 236, 236),
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