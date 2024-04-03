import 'package:get/get.dart';
import 'package:project/state/get_x_pattern/reactive/student_model.dart';

class StudentController extends GetxController {
  RxList<Rx<Student>> studentList = [
    Student(studentId: 1, studentName: "Andrew", studentGrade: "A").obs,
    Student(studentId: 2, studentName: "Brian", studentGrade: "B").obs,
    Student(studentId: 3, studentName: "Catherine", studentGrade: "C").obs,
  ].obs;

  List<String> newStudentName = ["Andrew2", "Brian2", "Catherine2"];
  List<String> newStudentGrade = ["A+", "B+", "C+"];

  void updateStudentName(String name, int index) {
    studentList[index].update((val) {
      val?.studentName = name;
    });
  }

  void updateStudentGrade(String grade, int index) {
    studentList[index].update((val) {
      val?.studentGrade = grade;
    });
  }
}