import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'db/db_function.dart';
import 'model/data_model.dart';

class ListStudentWidget extends StatelessWidget {
  const ListStudentWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: studentListNotifier,
      builder:(BuildContext ctx,List<student> studentList,Widget? child){
        return
        ListView.separated(
        itemBuilder: (ctx, index){
          final data = studentList[index];
          return ListTile(
            title: Text(data.name),
            subtitle: Text(data.age),
    
          );
          
        } ,
        separatorBuilder: (ctx,index){
          return const Divider();
        },
        itemCount: studentList.length,
      );

      },
       
    );
  }
}