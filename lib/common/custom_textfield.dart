
import 'package:control_style/decorated_input_border.dart';
import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  // final String label;
  final String? hintText;
  final double bottomPadding;
  final TextInputType? textInputType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextEditingController controller;
  final String? Function(String?)? validator;

   CustomTextField({
    Key? key,
    // required this.label,
    this.hintText,
    this.bottomPadding=10,
    this.textInputType,
    this.prefixIcon,
    this.suffixIcon,
    required this.controller,
    this.obscureText=false,
    this.validator,
    // this.controller,
    

  }): super(key: key);


 

  @override
  Widget build(BuildContext context) {
    return Container(
            child: TextFormField(
              // cursorColor: Colors.red,
              controller: controller,
              keyboardType: TextInputType.emailAddress,
              obscureText:obscureText,
              decoration:InputDecoration(
                prefixIcon: prefixIcon,
                suffixIcon:suffixIcon,
                 border: DecoratedInputBorder(
              child: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide(
                              width: 0, 
                              style: BorderStyle.none,
                          ),
              ),
              shadow:[
                BoxShadow(
                  color: Color.fromARGB(255, 174, 175, 175),
                  blurRadius: 12,
                )
              ],
            ),
                filled:true,
                fillColor:Colors.white,
                contentPadding: EdgeInsets.symmetric(
                  horizontal:20,
                  vertical:13,
                ),
               
                hintText:hintText,
                hintStyle:TextStyle(
                  fontSize:15,
                  color: Color.fromARGB(255, 194, 193, 193)
                )

              ),
            
              validator:validator,
            
            ),
          );
  }
}