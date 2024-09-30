import 'dart:io';

void main() {
  print('Masukkan suhu dalam Celsius:');
  double celsius = double.parse(stdin.readLineSync()!);

  print('Pilih konversi:'); 
  print('1. Reaumur');
  print('2. Fahrenheit');
  print('3. Kelvin');
  int option = int.parse(stdin.readLineSync()!);

  switch (option) {
    case 1:
      double reaumur = celsius * 4 / 5;
      print('Suhu dalam Reaumur: $reaumur');
      break;
    case 2:
      double fahrenheit = celsius * 9 / 5 + 32;
      print('Suhu dalam Fahrenheit: $fahrenheit');
      break;
    case 3:
      double kelvin = celsius + 273.15;
      print('Suhu dalam Kelvin: $kelvin');
      break;
    default:
      print('Pilihan tidak valid.');
  }
}
