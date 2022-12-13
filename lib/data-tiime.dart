import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DataTime extends StatefulWidget {
  const DataTime({Key? key}) : super(key: key);

  @override
  State<DataTime> createState() => _DataTimeState();
}

class _DataTimeState extends State<DataTime> {
  @override
  Widget build(BuildContext context) {
    setState(() {

    });
    DateTime datetime = DateTime.now();
    String datetime4 = DateFormat(DateFormat.YEAR_ABBR_MONTH_WEEKDAY_DAY).format(datetime);
    String datetime2 = DateFormat.Hms().format(datetime);
    return Column(
      children: [
        Text(datetime4,style: TextStyle(
          color: Colors.blue
        )),
        Text(datetime2,style: TextStyle(
            color: Colors.blue
        )),



    ],
    );
  }
}
