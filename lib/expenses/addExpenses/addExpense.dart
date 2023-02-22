import 'package:budget_tracer_practice/viewmodels/expenses_category_viewmodel.dart';
import 'package:budget_tracer_practice/viewmodels/expenses_viewmodel.dart';
import 'package:control_style/decorated_input_border.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:provider/provider.dart';

import '../../common/custom_button.dart';
import '../../common/custom_dropdown.dart';
import '../../common/custom_textfield.dart';
import '../../dashboard/main_dashboard/dashboard_body.dart';
import '../../model/expenses_model.dart';
import '../../viewmodels/account_viewmodel.dart';
import '../../viewmodels/auth_viewmodel.dart';
import '../../viewmodels/global_ui_viewmodel.dart';


class AddExpenses extends StatefulWidget {
  const AddExpenses({super.key});

  @override
  State<AddExpenses> createState() => _AddExpensesState();
}

class _AddExpensesState extends State<AddExpenses> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController amount = new TextEditingController();
  TextEditingController title = new TextEditingController();
  TextEditingController date = new TextEditingController();
  String expensesCategory = "";
  String expensesAccount = "";

  late GlobalUIViewModel _ui;
  late AuthViewModel _auth;
  late CategoryViewModel _categoryViewModel;
  late AccViewModel _accountViewModel;
  late ExpensesViewModel _expensesViewModel;
  
  get selectedAccount => null;

  void saveExpenses() async {
    _ui.loadState(true);
    var user_id = _auth.user!.uid;
    try {
      final ExpensesModel data = ExpensesModel(  
        amount: amount.text,
        title: title.text,
        date: date.text,
        categoryId: selectedCategory,
        userId: user_id, 
        id: '',
      );
      await _expensesViewModel.addExpenses(data);
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text("Expenses added successfully")));
  Navigator.pop(context);

                 Navigator.push(
                      context, MaterialPageRoute(builder: (context) => DashboardBody()));
    } catch (e) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(e.toString())));
    }
    _ui.loadState(false);
  }

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _ui = Provider.of<GlobalUIViewModel>(context, listen: false);
      _auth = Provider.of<AuthViewModel>(context, listen: false);
      _categoryViewModel =
          Provider.of<CategoryViewModel>(context, listen: false);
      getInit();
    });
       _expensesViewModel=Provider.of<ExpensesViewModel>(context, listen: false);
  
    super.initState();
  }

  getInit() async {
    _ui.loadState(true);
    try {
      await _categoryViewModel.getCategories();
    } catch (e) {
      print(e);
    }
    _ui.loadState(false);
  }

   String? selectedCategory;

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer2<CategoryViewModel, AccViewModel>(
      builder: (context, categoryVM, accountVM, child) {
        return ListView(
          children: [
            Form(
              key: _formKey,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Add Expenses",
                        style: TextStyle(
                          fontSize: 32,
                          fontWeight: FontWeight.w400,
                        )),
                    SizedBox(
                      height: 40,
                    ),
                    CustomTextField(
                      controller: title,
                      hintText: "Title",
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CustomTextField(
                      controller: amount,
                      hintText: "Amount",
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      child: DateTimePicker(
                        firstDate: DateTime(2000),
                        lastDate: DateTime(2100),
                        dateLabelText: 'Date',
                        controller: date,
                        onChanged: (val) => print(val),
                        validator: (val) {
                          print(val);
                        },
                        onSaved: (val) => print(val),
                        decoration: InputDecoration(
                            border: DecoratedInputBorder(
                              child: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8),
                                borderSide: BorderSide(
                                  width: 0,
                                  style: BorderStyle.none,
                                ),
                              ),
                              shadow: [
                                BoxShadow(
                                  color: Color.fromARGB(255, 174, 175, 175),
                                  blurRadius: 12,
                                )
                              ],
                            ),
                            contentPadding: EdgeInsets.zero,
                            filled: true,
                            fillColor: Colors.white,
                            hintText: "Date",
                            prefixIcon: Icon(Icons.date_range)),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    // DropdownButtonFormField2(
                    //   value: selectedAccount,
                    //   decoration: InputDecoration(
                    //     border: DecoratedInputBorder(
                    //       child: OutlineInputBorder(
                    //         borderRadius: BorderRadius.circular(8),
                    //         borderSide: BorderSide(
                    //           width: 0,
                    //           style: BorderStyle.none,
                    //         ),
                    //       ),
                    //       shadow: [
                    //         BoxShadow(
                    //           color: Color.fromARGB(255, 174, 175, 175),
                    //           blurRadius: 12,
                    //         )
                    //       ],
                    //     ),
                    //     contentPadding: EdgeInsets.zero,
                    //     filled: true,
                    //     fillColor: Colors.white,
                    //   ),
                    //   isDense: true,
                    //   hint: Text(
                    //     "Acount",
                    //     style: TextStyle(fontSize: 16),
                    //   ),
                    //   icon: const Icon(
                    //     Icons.arrow_drop_down,
                    //     color: Colors.black45,
                    //   ),
                    //   iconSize: 30,
                    //   buttonHeight: 50,
                    //   // buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                    //   dropdownDecoration: BoxDecoration(
                    //     borderRadius: BorderRadius.circular(15),
                    //   ),
                    //   items: accountVM.allAccount.map((pt) {
                    //     return DropdownMenuItem(
                    //       value: pt.accountId.toString(),
                    //       child: Text(
                    //         pt.accountName.toString(),
                    //         style: const TextStyle(
                    //           fontSize: 16,
                    //         ),
                    //       ),
                    //     );
                    //   }).toList(),
                    //   onChanged: (newVal) {
                    //     setState(() {
                    //       selectedAccount = newVal.toString();
                    //     });
                    //   },
                    //   validator: (value) {
                    //     if (value == null) {
                    //       return 'Please select bank account.';
                    //     }
                    //   },
                    // ),
                    CustomDropDown(hint: "Account"),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(height: 30),
                    DropdownButtonFormField2(
                      value: selectedCategory,
                      decoration: InputDecoration(
                        border: DecoratedInputBorder(
                          child: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide(
                              width: 0,
                              style: BorderStyle.none,
                            ),
                          ),
                          shadow: [
                            BoxShadow(
                              color: Color.fromARGB(255, 174, 175, 175),
                              blurRadius: 12,
                            )
                          ],
                        ),
                        contentPadding: EdgeInsets.zero,
                        filled: true,
                        fillColor: Colors.white,
                      ),

                      isDense: true,
                      hint: Text(
                        "Category",
                        style: TextStyle(fontSize: 16),
                      ),
                      icon: const Icon(
                        Icons.arrow_drop_down,
                        color: Colors.black45,
                      ),
                      iconSize: 30,
                      buttonHeight: 50,
                      // buttonPadding: const EdgeInsets.only(left: 20, right: 10),
                      dropdownDecoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      items: categoryVM.categories.map((pt) {
                        return DropdownMenuItem(
                          value: pt.id.toString(),
                          child: Text(
                            pt.categoryName.toString(),
                            style: const TextStyle(
                              fontSize: 16,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (newVal) {
                        setState(() {
                          selectedCategory = newVal.toString();
                        });
                      },
                      validator: (value) {
                        if (value == null) {
                          return 'Please select category.';
                        }
                      },
                      // onSaved: (value) {
                      //   selectedValue = value.toString();
                      // },
                    ),
                    SizedBox(
                      height: 50,
                    ),
                    CustomButton(
                      title: "Add",
                      onPressed: () {
                        saveExpenses();
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    CustomButton(
                      title: "Cancel",
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
      },
    ));
  }
}
