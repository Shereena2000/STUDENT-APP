import 'package:flutter/material.dart';
import 'package:student_record/components/view_details.dart';
import 'package:student_record/constants/const.dart';
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
              viewDialoge(context,student);
            },
            leading: CircleAvatar(
              backgroundImage: AssetImage("assets/images/avathara.jpeg"),  
            ),
            title: Text(student.name,style: normalText,),
            subtitle: Text(student.admisstionNo,style: subText ,),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  Icons.edit,
                  color: whiteColor,
                ),
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.delete,
                  color: whiteColor,
                ),
              ],
            )),
      ),
    );
  }
}
