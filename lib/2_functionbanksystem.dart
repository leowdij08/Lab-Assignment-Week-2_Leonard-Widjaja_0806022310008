class BankAccount {
  double _balance;

  BankAccount(this._balance);

  void deposit(double amount) {
    _balance += amount;
    print('Saldo bertambah: Rp$amount');
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print('Saldo berkurang: Rp$amount');
    } else {
      print('Saldo tidak cukup untuk melakukan penarikan!');
    }
  }

  void checkBalance() {
    print('Saldo saat ini: Rp$_balance');
  }
}

class SavingsAccount extends BankAccount {
  double interestRate;

  SavingsAccount(double balance, this.interestRate) : super(balance);

  void applyInterest() {
    double interest = _balance * interestRate / 100;
    deposit(interest);
    print('Bunga didapatkan: Rp$interest');
  }
}
