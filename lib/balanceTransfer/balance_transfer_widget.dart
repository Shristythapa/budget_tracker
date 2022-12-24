import 'package:budget_tracer_practice/common/custom_box.dart';
import 'package:budget_tracer_practice/common/custom_button.dart';
import 'package:budget_tracer_practice/common/custom_dropdown.dart';
import 'package:budget_tracer_practice/common/custom_icon.dart';
import 'package:budget_tracer_practice/common/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class BalanceTransferWidget extends StatelessWidget {
   BalanceTransferWidget({super.key});

  final _formKey = GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ListView(
        children: 
          [Form(
            key: _formKey,
            child: Container(
              // margin:EdgeInsets.only(top:MediaQuery.of(context).viewPadding.top),
              padding: EdgeInsets.symmetric(horizontal: 14.0,vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomIcon(
                    icon: Icons.arrow_back_outlined,
                    ),
                    SizedBox(height: 20,),
                    Text(
                      "Transfer Balance",
                      style:TextStyle(
                       fontSize:32,
                       fontWeight: FontWeight.w400,
                     )
                      ),
                      SizedBox(height: 40,),
                      CustomTextField(
                        hintText: "Amount",
                        validator:(val){
                            final  amountValid =RegExp(
                              r"^([0-9])");
                                if (val ==null){
                                  return"Email field cannot be empty";
                                }else if (val.isEmpty){
                                  return"Email field cannot be empty";
                                }else if (amountValid.hasMatch(val)){
                                  return null;
                                }else{
                                  return "Enter amount in numbers";
                                }
                            },
                        ),
                        SizedBox(height: 10,),
          
                        CustomDropDown(hint: "Select account to transfer from",),
                        SizedBox(height: 10,),
                        CustomDropDown(hint: "Select account to transfer to"),
                        SizedBox(height: 80,),
                        CustomButton(
                          title: "Add",
                          onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                _formKey.currentState!.save();
                              }
                            },
                          ),
                          SizedBox(height: 40,),
                          CustomButton(
                          title: "Cancel",
                          onPressed: (){
                            Navigator.pop(context);
                          },
                          ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}