import 'package:budget_tracer_practice/login.dart';
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
  final GlobalKey<FormState> _formKey=GlobalKey();
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
                Navigator.push(context,MaterialPageRoute(builder: (context) => const loginScreen() ));  
                    },
                  ),
                ),

              ),

      ),
      body:Container(
        padding: EdgeInsets.symmetric(
          horizontal:14.0,
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
                  key:_formKey,
                  child: Column(
                    children: [
                      CustomTextField(
                        hintText: "Email address",
                        prefixIcon: Icon(Icons.email),
                        bottomPadding: 30,
                        validator:(val){
                        final  emailValid =RegExp(
                          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
                            if (val ==null){
                              return"Email field cannot be empty";
                            }else if (val.isEmpty){
                              return"Email field cannot be empty";
                            }else if (emailValid.hasMatch(val)){
                              return null;
                            }else{
                              return "Invalid email address";
                            }
                        },

                        ),
                        
                    ],
                  ),
                ),
              ),
              SizedBox(height:20),
                CustomButton(
                  title: "Reset",
                  onPressed: (){
                    if (_formKey.currentState!.validate()) {
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
                  }
                  )
         ],
        ),
      )
    );
  }
}