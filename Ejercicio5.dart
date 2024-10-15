abstract class Animal {
  void makeSound();
}

mixin Nadador {
  void nadar() {
    print('I am swimming!');
  }
}

class Delfin extends Animal with Nadador {
  @override
  void makeSound() {
    print('Dolphin sound: Click-click!');
  }
}

class Vehiculo {
  factory Vehiculo(String tipo) {
    if (tipo == 'auto') {
      return Auto();
    } else if (tipo == 'moto') {
      return Moto();
    } else {
      throw 'Unknown vehicle type';
    }
  }

  void displayType() {
    print('This is a vehicle');
  }
}

class Auto implements Vehiculo {
  factory Auto() {
    return Auto._internal();
  }

  Auto._internal();

  @override
  void displayType() {
    print('This is a car');
  }
}

class Moto implements Vehiculo {
  factory Moto() {
    return Moto._internal();
  }

  Moto._internal();

  @override
  void displayType() {
    print('This is a motorcycle');
  }
}

void main() {
  Delfin delfin = Delfin();
  delfin.makeSound();
  delfin.nadar();

  Vehiculo auto = Vehiculo('auto');
  auto.displayType();

  Vehiculo moto = Vehiculo('moto');
  moto.displayType();
}
