import 'package:flutter/material.dart';
import 'package:student_record/components/add_detailes.dart';
import 'package:student_record/components/view_details.dart';
import 'package:student_record/constants/const.dart';
import 'package:student_record/db/functions/add_to_hive.dart';
import 'package:student_record/db/model/data.dart';

class StudentTile extends StatelessWidget {
  final StudentData student;
  const StudentTile({
    super.key,
    required this.student,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: tealColor, borderRadius: BorderRadius.circular(15)),
        child: ListTile(
            onTap: () {
              viewDialoge(context, student);
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/avathara.jpeg"),
            ),
            title: Text(
              student.name,
              style: normalText,
            ),
            subtitle: Text(
              student.admisstionNo,
              style: subText,
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [ 
                IconButton(onPressed: () {
                  showAddStudentDialog(context,student: student);
                },
             icon: Icon( Icons.edit,
                  color: whiteColor,)    
                ),
                SizedBox(
                  width: 10,
                ),
                IconButton(
                  onPressed: () {
                    if (student.id != null) {
                      AddStudentData.deletData(student.id!);
                    } else {
                      print('Id is null,cannot delete');
                    }
                  },
                  icon: Icon(
                    Icons.delete,
                    color: whiteColor,
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
