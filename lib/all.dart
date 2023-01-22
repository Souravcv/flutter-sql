import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home.dart';
import 'list.dart';

class listviu extends StatelessWidget {
  const listviu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(children: [
          AddstudentWidget(),
          const Expanded(child: ListStudentWidget()),
          
        ]),
      ),

    );
  }
}