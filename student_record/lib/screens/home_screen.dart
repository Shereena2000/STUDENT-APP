import 'package:flutter/material.dart';
import 'package:student_record/components/add_detailes.dart';
import 'package:student_record/components/student_tile.dart';
import 'package:student_record/constants/const.dart';
import 'package:student_record/db/functions/add_data.dart';
import 'package:student_record/db/model/data.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  
  @override
  Widget build(BuildContext context) {
    
    return SafeArea(
    
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Student Records',
            style: TextStyle(color: whiteColor),
          ),
          actions: const [
            Icon(Icons.search, color: whiteColor),
            SizedBox(width: 20),
            Icon(Icons.grid_view, color: whiteColor),
            SizedBox(width: 10),
          ],
          backgroundColor: Colors.teal,
        ),
        body: Padding(
          padding: const EdgeInsets.only(top: 8.0,left: 8,right: 8),
          child: ValueListenableBuilder(
              valueListenable: studentNotifier,
              builder: (context, List<StudentData> value, child) {
                if (value.isEmpty) {
                  return Center(
                    child: Text("STUDENT DATA IS EMPTY"),
                  );
                }
                return ListView.builder(
                    itemCount: value.length,
                    itemBuilder: (BuildContext context, int index) {
                      return StudentTile(student: value[index]);
                    });
              }),
        ),
        
        
        bottomNavigationBar: Container( // Adding a Container as bottomNavigationBar
          height: 60.0,   // Adjust the height as per your design needs
          color: Colors.transparent,  
          // Optionally, make the background transparent
          child: Padding(
            padding: const EdgeInsets.only(bottom:  5.0,right: 5,top: 2),    
            child: Row(mainAxisAlignment: MainAxisAlignment.end,children: [FloatingActionButton(
            onPressed: () {
              showAddStudentDialog(
                context,   
              );
            },
            child: Icon(
              Icons.add,
              color: whiteColor,
            ),
            backgroundColor: Colors.teal,
                    ),
                    ],),   
          ),
        ),  
        
      ),
    );
  } 
}

             