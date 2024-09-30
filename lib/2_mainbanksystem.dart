import 'dart:io';
import '2_functionbanksystem.dart';

void main() {
  double balance;
  double depositAmount;
  double withdrawAmount;

  while (true) {
    print('Masukkan saldo awal (minimum Rp50.000):');
    balance = double.parse(stdin.readLineSync()!);
    if (balance >= 50000) {
      break;
    } else {
      print('Saldo awal tidak boleh kurang dari Rp50.000.');
    }
  }

  print('Masukkan bunga tabungan (%):');
  double interestRate = double.parse(stdin.readLineSync()!);

  SavingsAccount account = SavingsAccount(balance, interestRate);

  account.checkBalance();

  while (true) {
    print('Masukkan jumlah deposit (minimum Rp50.000):');
    depositAmount = double.parse(stdin.readLineSync()!);
    if (depositAmount >= 50000) {
      account.deposit(depositAmount);
      break;
    } else {
      print('Deposit tidak boleh kurang dari Rp50.000.');
    }
  }

  while (true) {
    print('Masukkan jumlah penarikan (minimum Rp50.000):');
    withdrawAmount = double.parse(stdin.readLineSync()!);
    if (withdrawAmount >= 50000) {
      account.withdraw(withdrawAmount);
      break;
    } else {
      print('Penarikan tidak boleh kurang dari Rp50.000.');
    }
  }

  account.applyInterest();
  account.checkBalance();
}
