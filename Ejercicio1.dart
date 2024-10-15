class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayDetails() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  Person person1 = Person('Wander Jerez', 20);
  person1.displayDetails();
}
