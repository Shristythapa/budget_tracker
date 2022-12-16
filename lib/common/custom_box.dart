import 'package:flutter/cupertino.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class CustomBox extends StatefulWidget {
  const CustomBox({super.key});
 

  @override
  State<CustomBox> createState() => _CustomBoxState();
}

class _CustomBoxState extends State<CustomBox> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 94,
        width: 329,
        decoration: BoxDecoration(
          color: Color(0xFFA95894E),
          borderRadius: BorderRadius.circular(10),
          
          
        ),
      
      child: Text("MyText", style: TextStyle(fontSize: 20))
    
      ),
      
    );
  }
}