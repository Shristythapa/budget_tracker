import 'package:budget_tracer_practice/viewmodels/income_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/custom_date_picker.dart';
import '../../../common/custom_icon.dart';
import '../../common/CustomIncomeBox.dart';
import '../../common/custom_box.dart';
import '../../dashboard/main_dashboard/dashboard_body.dart';
import '../../viewmodels/auth_viewmodel.dart';

class IncomeWidget extends StatefulWidget {
   IncomeWidget({super.key});

 
  @override
  State<IncomeWidget> createState() => _IncomeWidgetState();
}

class _IncomeWidgetState extends State<IncomeWidget> {
     late AuthViewModel _authViewModel;
  late IncomeViewModel _incomeViewModel;
   @override
  void initState() {
     _authViewModel =Provider.of<AuthViewModel>(context,listen: false);
     _incomeViewModel=Provider.of<IncomeViewModel>(context, listen: false);
     try{
      _incomeViewModel.getIncomes(_authViewModel.user!.uid);
     }catch(e){
      print(e);
     }
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
      DateTime? selectedDate;

     return Consumer<IncomeViewModel>(
      builder: (context,taskVM, child){
           return Scaffold(
      backgroundColor: Colors.white,
      body:Container(
        margin:EdgeInsets.only(top:MediaQuery.of(context).viewPadding.top+10),
        padding: EdgeInsets.symmetric(horizontal: 14.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomIcon(
              icon: Icons.close,
              onPressed:(){
                Navigator.pop(context);
                 Navigator.push(
                      context, MaterialPageRoute(builder: (context) => DashboardBody()));
              }
              ),
              SizedBox(height: 20,),
              Center(
                child: Text(
                  "Income",
                  style:TextStyle(
                   fontSize:32,
                   fontWeight: FontWeight.w400,
                 )
                  ),
              ),
                  SizedBox(height: 5,),
                 Row(
                   children: [
                     CustomDatePicker(title: "Month",),
                     SizedBox(width:150),
                     CustomDatePicker(title: "Year",),
                   ],
                 ),
                  ListView(
                    shrinkWrap: true,
                    children: [
                      ...taskVM.incomes.map((e) =>
                       CustomIncomeBox(id:e.id,userId:e.userId!,title: e.title!, rs:e.amount!,  incomeId: e.id!,))
                    ],
                   ),
          ],
        ),
      )
    );
      }
      );
  }
}