import 'dart:io';
import '3_functionsimpleatm.dart';

void main() {
  double initialBalance;

  // Validasi saldo awal minimal Rp50.000
  while (true) {
    print('Masukkan saldo awal (minimum Rp50.000):');
    initialBalance = double.parse(stdin.readLineSync()!);
    if (initialBalance >= 50000) {
      break;
    } else {
      print('Saldo awal tidak boleh kurang dari Rp50.000.');
    }
  }

  ATM atm = ATM(initialBalance);

  while (true) {
    print('\nMenu ATM:');
    print('1. Deposit');
    print('2. Penarikan');
    print('3. Cek Saldo');
    print('4. Keluar');
    print('Pilih opsi:');
    int option = int.parse(stdin.readLineSync()!);

    if (option == 1) {
      // Validasi deposit minimal Rp50.000
      double depositAmount;
      while (true) {
        print('Masukkan jumlah deposit (minimum Rp50.000):');
        depositAmount = double.parse(stdin.readLineSync()!);
        if (depositAmount >= 50000) {
          atm.deposit(depositAmount);
          break;
        } else {
          print('Deposit tidak boleh kurang dari Rp50.000.');
        }
      }
    } else if (option == 2) {
      // Validasi penarikan minimal Rp50.000
      double withdrawAmount;
      while (true) {
        print('Masukkan jumlah penarikan (minimum Rp50.000):');
        withdrawAmount = double.parse(stdin.readLineSync()!);
        if (withdrawAmount >= 50000) {
          atm.withdraw(withdrawAmount);
          break;
        } else {
          print('Penarikan tidak boleh kurang dari Rp50.000.');
        }
      }
    } else if (option == 3) {
      atm.checkBalance();
    } else if (option == 4) {
      print('Terima kasih sudah menggunakan ATM.');
      break;
    } else {
      print('Opsi tidak valid.');
    }
  }
}
