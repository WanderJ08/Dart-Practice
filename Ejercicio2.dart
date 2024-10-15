class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void displayDetails() {
    print('Name: $name, Age: $age');
  }
}

class Employee extends Person {
  String position;

  Employee.withPosition(String name, int age, this.position) : super(name, age);

  @override
  void displayDetails() {
    print('Name: $name, Age: $age, Position: $position');
  }
}

void main() {
  Employee employee1 =
      Employee.withPosition('Wander Jerez', 20, 'Software Engineer');
  employee1.displayDetails();
}
