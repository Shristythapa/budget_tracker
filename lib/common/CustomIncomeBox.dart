import 'package:budget_tracer_practice/income/viewIncome/view_income_details.dart';
import 'package:flutter/material.dart';

class CustomIncomeBox extends StatefulWidget {
  final String title;
  final String rs;
  final id;
  final String userId;
  final String incomeId;
  const CustomIncomeBox({
    super.key,
    required this.incomeId,
    required this.id,
    required this.title,
    required this.rs,
    required this.userId

  });


  @override
  State<CustomIncomeBox> createState() => _CustomIncomeBoxState();
}

class _CustomIncomeBoxState extends State<CustomIncomeBox> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() {
        Navigator.pop(context);
        Navigator.push(
            context, MaterialPageRoute(builder: (context) =>income(id: widget.id,title: widget.title,rs: widget.rs,userId: widget.userId,incomeId: widget.incomeId,) ));

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
        ),

      ),
    );

  }
}