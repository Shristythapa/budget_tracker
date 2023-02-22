import 'package:budget_tracer_practice/income/viewIncome/view_income_details.dart';
import 'package:flutter/material.dart';

<<<<<<< HEAD
class CustomBox extends StatefulWidget {
  final String? title;
  final String? rs;
  final String? id;
  final String? userId;
  const CustomBox({super.key, this.id, this.title, this.rs, this.userId});
=======
import '../expenses/view_Expenses_details.dart';


class CustomBox extends StatefulWidget {
  final String title;
  final String rs;
  final String id;
  final String userId;
  const CustomBox({
    super.key,
    required this.id,
    required this.title,
    required this.rs,
    required this.userId
     
  });
 
>>>>>>> 49020cc2cfa88760317d148044097d958b3137c9

  @override
  State<CustomBox> createState() => _CustomBoxState();
}

class _CustomBoxState extends State<CustomBox> {
  @override
  void initState() {
    // print(widget.accountId);
    super.initState();
  }

  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(12)),
        color: Colors.grey[300],
      ),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 25),
        child: Row(
          children: [
            Expanded(
              child: Text(widget.title!,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            Text(widget.rs!,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                )),
          ],
=======
    return GestureDetector(
      onTap: (() {
         Navigator.pop(context);
                  Navigator.push(
                      context, MaterialPageRoute(builder: (context) => expenses(id: widget.id,title: widget.title,rs: widget.rs,userId: widget.userId,)));
      
      }),
      child: Container(
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
>>>>>>> 49020cc2cfa88760317d148044097d958b3137c9
        ),
    
      ),
    );
  }
}
