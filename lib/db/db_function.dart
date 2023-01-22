import 'package:flutter/cupertino.dart';
import 'package:sqflite/sqflite.dart';

import '../model/data_model.dart';

ValueNotifier<List<student>> studentListNotifier = ValueNotifier([]);

late Database _db;

Future<void> sqlDatabase() async {
_db =await  openDatabase('student.db', version: 1,
      onCreate: (Database _db, int version) async {
    await _db.execute(
        'CREATE TABLE student(id INTEGER PRIMARY KEY,name TEXT,age TEXT)');
  }) as Database;
}

Future<void> addstudent(student value) async {
await  _db.rawInsert('INSERT INTO student (name,age) VALUES (?,?)',[value.name,value.age]);
getAllStudent();
  // studentListNotifier.value.add(value);
  // studentListNotifier.notifyListeners();
}

Future<void> getAllStudent() async {
  studentListNotifier.value.clear();
  final _values = await _db.rawQuery('SELECT * FROM student');
  print(_values);
  _values.forEach((Map) {
  final studente =  student.fromMAp(Map);
  studentListNotifier.value.add(studente);
studentListNotifier.notifyListeners();



   });
  // studentListNotifier.value.clear();
  
}

Future<void> deletestudent() async {}
Future<void> deletStudent(int id) async {
  //final studentDB = await Hive.openBox<Student>('student_db');
  // await studentDB.delete(id);
  getAllStudent();
}
