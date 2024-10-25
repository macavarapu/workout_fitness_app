import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:workout_fitness_app/constants/app_color_constants.dart';
import 'package:workout_fitness_app/constants/extension.dart';

class SelectDateTime extends StatelessWidget {
  final DateTime? selectDate;
  final String title;
  final Function(DateTime) didChange;
  const SelectDateTime(
      {super.key,
      required this.title,
      required this.didChange,
      this.selectDate});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);

    return InkWell(
      onTap: () {
        showCupertinoModalPopup(
            context: context,
            builder: (context) {
              return Container(
                height: 250,
                color: AppColors.white,
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text(
                              "Done",
                              style: TextStyle(
                                  color: AppColors.secondaryText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w700),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 200,
                      child: CupertinoDatePicker(
                          initialDateTime: selectDate,
                          dateOrder: DatePickerDateOrder.ymd,
                          mode: CupertinoDatePickerMode.date,
                          onDateTimeChanged: didChange),
                    )
                  ],
                ),
              );
            });
      },
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: media.width * 0.05),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: TextStyle(
                  color: AppColors.secondaryText,
                  fontSize: 20,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: 8,
            ),
            Text(
              selectDate == null
                  ? "Select Date"
                  : selectDate!.stringFormat(format: "MMM dd, yyyy"),
              style: TextStyle(color: AppColors.primary, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
