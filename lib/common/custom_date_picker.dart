import 'package:flutter/material.dart';
import 'package:month_picker_dialog_2/month_picker_dialog_2.dart';


class CustomDatePicker extends StatefulWidget {
  const CustomDatePicker({
    super.key,
    required this.title
    });
  final String title;

  @override
  State<CustomDatePicker> createState() => _CustomDatePickerState();
}

class _CustomDatePickerState extends State<CustomDatePicker> {
  @override
  Widget build(BuildContext context) {
    DateTime? selectedDate;
    return  Container(
                    child: Row(
                      children: [
                        ElevatedButton(
                            onPressed: () {
                                showMonthPicker(
                                context: context,
                                initialDate: DateTime.now(),
                                ).then((date) {
                                if (date != null) {
                                    setState(() {
                                    selectedDate = date;
                                    });
                                }
                                });
                            },
                            child: Row(
                              children: [
                                Text(
                                  widget.title,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                  ),
                                Icon(

                                  Icons.arrow_drop_down_outlined,
                                  color: Colors.black,
                                  )
                              ],
                            ),
                             style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF77ABA2), // background
                               // foreground
                              ),
                        ),
                      ],
                    ),
                  );
  }
}