import 'package:flutter/material.dart';


class CustomTextField extends StatelessWidget {
  final String label;
  final String hintText;
  final double bottomPadding;
  final TextInputType? textInputType;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  

 const CustomTextField({
    required this.label,
    required this.hintText,
    this.bottomPadding=10,
    this.textInputType,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText=false,

  });
 

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.only(bottom:bottomPadding),
      child: Column(
       crossAxisAlignment:CrossAxisAlignment.start,

        children: [
          Text(
            label,
            style:TextStyle(
              fontSize:15,
              fontWeight:FontWeight.normal,
              color:Color(0xFFA39C9C),
            )
          ),
           const SizedBox(height:12),
          Container(
            height:41,
            // width:350,
            // margin:EdgeInsets.only(left:33,right: 33),
            decoration: BoxDecoration(
              color:Colors.white,
              borderRadius: BorderRadius.circular(30),
            ),
            child: TextField(
              cursorColor: Colors.red,
              maxLines: 1,
              keyboardType: TextInputType.text,
              obscureText:obscureText,
              decoration:InputDecoration(
                prefixIcon: prefixIcon,
                border:InputBorder.none,
                suffixIcon:suffixIcon,
                
                
                // fillColor:Colors.transparent,
                filled:true,
                contentPadding: EdgeInsets.symmetric(
                  horizontal:20,
                  vertical:13,
                ),
               
                hintText:hintText,
                hintStyle:TextStyle(
                  color:Color(0xFFA39C9C),
                )
                
              )
            ),
          ),
        ],
      ),
      
    );
  }
}