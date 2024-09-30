class Animal {
  void sound() {
    print('Hewan bersuara');
  }

  void eat() {
    print('Hewan makan');
  }
}

class Dog extends Animal {
  @override
  void sound() {
    print('Anjing menggonggong');
  }

  @override
  void eat() {
    print('Anjing makan daging');
  }
}

class Cat extends Animal {
  @override
  void sound() {
    print('Kucing mengeong');
  }

  @override
  void eat() {
    print('Kucing makan ikan');
  }
}
