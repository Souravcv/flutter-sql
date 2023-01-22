import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'db/db_function.dart';
import 'model/data_model.dart';

class AddstudentWidget extends StatelessWidget {
   AddstudentWidget({super.key});
  final _nameController = TextEditingController();
  final _ageController =TextEditingController();

  @override
  Widget build(BuildContext context) {
    getAllStudent();
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        children: [
          TextFormField(
            controller: _nameController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'name',
            ),
          ),
          const SizedBox(height: 20,),
           TextFormField(
            controller: _ageController,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'age',
            ),
          ),
           const SizedBox(height: 20,), 
           ElevatedButton.icon(onPressed: (){
            onAddStudentButtonClick();
           },
           icon: const Icon(Icons.add),
           label: const Text('add student'),
           )


        ],
      ),
     
      
    );
  }
  Future  onAddStudentButtonClick()async{
    final name = _nameController.text.trim();
    final age = _ageController.text.trim();
    if(name.isEmpty || age.isEmpty){
      return;
    }
    print('$name $age');

    
    var id;



    final _student = student(name:name ,age:age, id: id );






    addstudent(_student);

  }
}