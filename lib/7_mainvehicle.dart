import 'dart:io';
import '7_functionnvehicle.dart';

void main() {
  print('Pilih tipe kendaraan:');
  print('1. Mobil');
  print('2. Motor');
  String option = stdin.readLineSync()!;

  print('Masukkan nama kendaraan:');
  String name = stdin.readLineSync()!;

  print('Masukkan kecepatan kendaraan:');
  double speed = double.parse(stdin.readLineSync()!);

  if (option == '1') {
    Mobil mobil = Mobil(name, speed);
    mobil.move();
  } else if (option == '2') {
    Motor motor = Motor(name, speed);
    motor.move();
  } else {
    print('Opsi tidak valid.');
  }
}
