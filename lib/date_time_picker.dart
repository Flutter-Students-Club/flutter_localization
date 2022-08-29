import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class DateTimePicker extends StatefulWidget {
  const DateTimePicker({
    Key? key,
  }) : super(key: key);

  @override
  State<DateTimePicker> createState() => _DateTimePickerState();
}

class _DateTimePickerState extends State<DateTimePicker> {
  DateTime dateTime = DateTime.now();
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () async {
        DateTime? newDate = await showDatePicker(
          context: context,
          initialDate: dateTime,
          firstDate: DateTime(1900),
          lastDate: DateTime(2100),
        );
        if (newDate == null) return;
        setState(() => dateTime = newDate);
        print(dateTime);
      },
      child: Text(AppLocalizations.of(context)!.openDatePicker),
    );
  }
}
