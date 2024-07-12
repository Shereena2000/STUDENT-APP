import 'package:flutter/material.dart';
import 'package:student_record/constants/const.dart';
import 'package:student_record/db/model/data.dart';

void viewDialoge(context,StudentData student) {
  showDialog(
      context: context,
      builder: (context) {
        return Dialog(
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),child: Column(mainAxisSize: MainAxisSize.min,children: [Padding(padding: const EdgeInsets.all(8),child: Text(
                  'Student Details',
                  style: TextStyle(color: tealColor, fontSize: 18),
                ),), 
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name: ${student.name}', style: TextStyle(fontSize: 16)),
                    sizedboxh10,
                    Text('Age: ${student.age}', style: TextStyle(fontSize: 16)),
                  sizedboxh10,
                    Text('Admission Number: ${student.admisstionNo}', style: TextStyle(fontSize: 16)),
                  sizedboxh10,
                    Text('Place: ${student.place}', style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),],),
          ),
        );
      });
}
