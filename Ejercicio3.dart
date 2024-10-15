abstract class Animal {
  void eat();
}

class Dog extends Animal {
  String name;
  int age;

  Dog(this.name, this.age) : assert(age > 0, 'Age must be greater than 0');

  @override
  void eat() {
    print('$name is eating.');
  }

  void displayDetails() {
    print('Dog Name: $name, Age: $age');
  }
}

void main() {
  Dog dog1 = Dog('Buddy', 3);
  dog1.displayDetails();
  dog1.eat();
}
