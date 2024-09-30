class Vehicle {
  String name;
  double speed;

  Vehicle(this.name, this.speed);

  void move() {
    print('$name bergerak dengan kecepatan $speed km/jam.');
  }
}

class Mobil extends Vehicle {
  Mobil(String name, double speed) : super(name, speed);

  @override
  void move() {
    String speedDescription;

    if (speed > 60) {
      speedDescription = 'cepat';
    } else if (speed >= 30 && speed <= 60) {
      speedDescription = 'normal';
    } else {
      speedDescription = 'pelan';
    }

    print('Mobil $name bergerak $speedDescription di jalan dengan kecepatan $speed km/jam.');
  }
}

class Motor extends Vehicle {
  Motor(String name, double speed) : super(name, speed);

  @override
  void move() {
    print('Motor $name bergerak dengan cepat di lalu lintas dengan kecepatan $speed km/jam.');
  }
}
