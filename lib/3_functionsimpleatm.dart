class ATM {
  double _balance = 0;

  ATM(this._balance);

  void deposit(double amount) {
    _balance += amount;
    print('Uang sebesar Rp$amount berhasil ditambahkan.');
  }

  void withdraw(double amount) {
    if (amount <= _balance) {
      _balance -= amount;
      print('Uang sebesar Rp$amount berhasil ditarik.');
    } else {
      print('Saldo tidak cukup.');
    }
  }

  void checkBalance() {
    print('Saldo saat ini: Rp$_balance');
  }
}
