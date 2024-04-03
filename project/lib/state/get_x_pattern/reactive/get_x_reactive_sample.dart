import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project/state/get_x_pattern/reactive/student_controller.dart';

class GetXReactiveSample extends StatelessWidget {
  GetXReactiveSample({super.key});

  final StudentController _con = Get.put(StudentController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: "GetX Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text("GetX Example"),
        ),
        body: ListView.builder(
          itemCount: _con.studentList.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: const EdgeInsets.all(15),
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  GetX<StudentController>(
                    builder: (_) => Text("ID: ${_con.studentList[index]().studentId}, NAME: ${_con.studentList[index]().studentName}, GRADE: ${_con.studentList[index]().studentGrade}")
                    ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextButton(onPressed: () => _con.updateStudentName(_con.newStudentName[index], index), child: const Text("이름 변경")),
                      TextButton(onPressed: () => _con.updateStudentGrade(_con.newStudentGrade[index], index), child: const Text("성적 변경")),
                    ],
                  )
                ],
              ),
            );
          }
        ),
      ),
    );
  }
}