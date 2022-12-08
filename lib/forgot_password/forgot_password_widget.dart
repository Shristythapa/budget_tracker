import 'package:flutter/material.dart';
import '../common/custom_button.dart';
import '../common/custom_icon.dart';
import '../common/custom_textfield.dart';
import 'otp_verifiacation_screen.dart';




class ForgetPasswordWidget extends StatefulWidget {
   ForgetPasswordWidget({super.key});
    

   @override
  State<ForgetPasswordWidget> createState() => _ForgetPasswordWidgetState();
}

class _ForgetPasswordWidgetState extends State<ForgetPasswordWidget> {
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
                    onPressed:(){},
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
               "Forgot Password",
               style:TextStyle(
                 fontSize:32,
                 fontWeight: FontWeight.w400,
               )
             ),
           ),
           
            Text(
              "We'll email you a code to reset your password",
               style:TextStyle(
                 fontWeight:FontWeight.normal,
                  fontSize:15,
                  letterSpacing: 0.3,
                  ),
              ),
              SizedBox(height:20),
            
              Container(
                child: Form(
                  
                  child: Column(
                    children: [
                      CustomTextField(
                        label: "",
                        hintText: "Email address",
                        bottomPadding: 30,
                       

                        ),
                        
                    ],
                  ),
                ),
              ),
                CustomButton(
                  title: "Reset",
                  onPressed: (){
                   
                      Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context)=>OtpVerifyWidget())
                    );
                      // ScaffoldMessenger.of(context).showSnackBar(
                      //   SnackBar(
                      //     content: Text("This is a reset"),
                          
                      //   ),
                      // );
                    }
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context)=>OtpVerifyWidget())
                    // );
                    // print("Reset");
                  
                  )
         ],
        ),
      )
    );
  }
}