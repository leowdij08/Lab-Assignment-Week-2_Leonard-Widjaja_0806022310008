import 'dart:io';
import '1_functionstudentclass.dart';

void main() {
  print('Masukkan nama siswa:');
  String? name = stdin.readLineSync();

  print('Masukkan ID siswa:');
  int studentID = int.parse(stdin.readLineSync()!);

  print('Masukkan nilai siswa:');
  double grade = double.parse(stdin.readLineSync()!);

  Student student = Student(name!, studentID, grade);

  student.displayInfo();

  if (student.passes()) {
    print('Selamat, siswa lulus!');
  } else {
    print('Siswa belum lulus.');
  }
}
