import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DatePIker extends StatefulWidget {
  const DatePIker({super.key});

  @override
  State<DatePIker> createState() => _DatePIkerState();
}

class _DatePIkerState extends State<DatePIker> {
  late DateTime date;
  TextEditingController txt=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TextField(
              controller: txt,
              onTap: ()async{
                final DateTime? date = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(1900),
                    lastDate:DateTime(2030)
                );
                if(date!=null){
                  setState(() {
                    print(date);
                    txt.text=date.toString();
                  });
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
