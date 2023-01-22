
class student {

  final String name;
 
  final String age;
  student({required this.name,required  this.age, required int id});
  static student fromMAp(Map<String,Object?>map){
    final id =map ['id'] as int;
    final name =map ['name'] as String;
    final age =map ['age'] as String;
   return student(id: id, name: name, age: age);  
  }


  
}