import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Student_Details2 extends StatefulWidget {

  @override
  State<Student_Details2> createState() => _Student_Details2State();
}
enum RecordAttendance { Presence, Absence }

class _Student_Details2State extends State<Student_Details2> {

  RecordAttendance? attendance = RecordAttendance.Presence;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
        body :Directionality(
        textDirection:TextDirection.rtl,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(children: [
            Expanded(
              flex: 1,
              child: TextFormField(
          decoration:  InputDecoration(
              prefixIcon: Icon(Icons.save),
              labelText: 'ما تم حفظه',
              labelStyle: TextStyle(color: Colors.black),
              border: OutlineInputBorder(),
          ),
      ),
            ),
            SizedBox(height: 20,),
            Expanded(
              flex: 1,
              child: TextFormField(
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.details),
                  labelText: ' تقييم ما تم حفظه',
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20,),
            Expanded(
              flex: 2,

              child: TextFormField(
                maxLines: 3,
                keyboardType: TextInputType.multiline,
                decoration: const InputDecoration(
                  prefixIcon: Icon(Icons.work ,),
                  labelText: ' وصف الواجب البيتي ',
                  alignLabelWithHint: true,
                  labelStyle: TextStyle(color: Colors.black),
                  border: OutlineInputBorder(),

                ),
              ),


            ),
            Expanded(
              flex: 3,
              child: Column(
                children: [
                  ListTile(
                    title: const Text('حضور'),
                    leading: Radio<RecordAttendance>(
                      value: RecordAttendance.Presence,
                      groupValue: attendance,
                      onChanged: (RecordAttendance? value) {
                        setState(() {
                          attendance = value;
                        });
                      },
                    ),
                  ),
                  ListTile(
                    title: const Text('غياب'),
                    leading: Radio<RecordAttendance>(
                      value: RecordAttendance.Absence,
                      groupValue: attendance,
                      onChanged: (RecordAttendance? value) {
                        setState(() {
                          attendance = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
    ],),
        ),
    ),
    );
  }
}
