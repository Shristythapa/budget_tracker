import 'package:flutter/material.dart';


class CustomBox extends StatefulWidget {
  final String title;
  final String rs;
  const CustomBox({
    super.key,
    required this.title,
    required this.rs,
  });
 

  @override
  State<CustomBox> createState() => _CustomBoxState();
}

class _CustomBoxState extends State<CustomBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
   margin: EdgeInsets.only(bottom: 20),

      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Colors.grey[300],
      ),
      child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30,vertical:25),
        child: Row(
          children: [
            Expanded(
              child: Text(
                widget.title,
                 style:TextStyle(
                  fontSize:16,
                  fontWeight:FontWeight.w400,
                )
              ),
            ),
            Text(
              widget.rs,
               style:TextStyle(
                  fontSize:16,
                  fontWeight:FontWeight.w400,
                )
              ),
          ],
          
        ),
      ),
      
    );
    
  }
}