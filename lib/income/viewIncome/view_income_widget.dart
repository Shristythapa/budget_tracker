import 'package:budget_tracer_practice/model/income_model.dart';
import 'package:budget_tracer_practice/viewmodels/auth_viewmodel.dart';
import 'package:budget_tracer_practice/viewmodels/income_viewmodel.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../common/custom_date_picker.dart';
import '../../../common/custom_icon.dart';
import '../../common/custom_box.dart';

class IncomeWidget extends StatefulWidget {
  IncomeWidget({super.key});

  // final List<Map<String,dynamic>>_items=[
  //   {
  //     "title": "Salary",
  //     "rs":"Rs. 4000"
  //   },
  //   {
  //     "title": "Frelancing",
  //     "rs":"Rs. 3000"
  //   },
  //   {
  //     "title": "Marketing",
  //     "rs":"Rs. 10000"
  //   },
  //   {
  //     "title": "Salary",
  //     "rs":"Rs. 4000"
  //   },
  //   {
  //     "title": "Frelancing",
  //     "rs":"Rs. 3000"
  //   },
  //   {
  //     "title": "Marketing",
  //     "rs":"Rs. 10000"
  //   },
  //   {
  //     "title": "Salary",
  //     "rs":"Rs. 4000"
  //   },
  //   {
  //     "title": "Frelancing",
  //     "rs":"Rs. 3000"
  //   },
  //   {
  //     "title": "Marketing",
  //     "rs":"Rs. 10000"
  //   },
  // ];

  @override
  State<IncomeWidget> createState() => _IncomeWidgetState();
}

class _IncomeWidgetState extends State<IncomeWidget> {
  late AuthViewModel _authViewModel;
  late IncomeViewModel _incomeViewModel;
  @override
  Widget build(BuildContext context) {
    DateTime? selectedDate;

    return Scaffold(
        backgroundColor: Colors.white,
        body: Consumer<IncomeViewModel>(
          builder: (context, incomeVM, child) {
            return Container(
              margin: EdgeInsets.only(
                  top: MediaQuery.of(context).viewPadding.top + 10),
              padding: EdgeInsets.symmetric(horizontal: 14.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomIcon(
                      icon: Icons.close,
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                  SizedBox(
                    height: 20,
                  ),
                  Center(
                    child: Text("Income",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                        )),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    children: [
                      CustomDatePicker(
                        title: "Month",
                      ),
                      SizedBox(width: 150),
                      CustomDatePicker(
                        title: "Year",
                      ),
                    ],
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemBuilder: (context, index) {
                        Column(
                          children: [
                            ...incomeVM.incomes.map((e) => IncomeCard(e))
                          ],
                        );
                        // return CustomBox(
                        // title:widget._items[index]["title"],
                        // rs:widget._items[index]["rs"],
                        // );
                      },
                      // itemCount:widget._items.length,
                    ),
                  ),
                ],
              ),
            );
          },
        ));
  }

  Widget IncomeCard(IncomeModel e) {
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
              child: Text(e.categoryId.toString(),
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  )),
            ),
            Text("Rs" + e.amount.toString(),
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                )),
          ],
        ),
      ),
    );
  }
}
