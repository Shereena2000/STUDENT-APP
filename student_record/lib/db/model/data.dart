import 'package:hive_flutter/adapters.dart';
part 'data.g.dart';
@HiveType(typeId: 1)
class StudentData {
  @HiveField(0)
  final String name;
@HiveField(1)
  final String age;
@HiveField(2)
  final String place;
@HiveField(3)
  final String admisstionNo;

  @HiveField(4)
  int? id;
  StudentData(
      {required this.name,
      required this.age,
      required this.place,
      required this.admisstionNo,this.id});
}
