void main() {
  primeNumber(n: 3);
  primeNumber2(5);
  primeNumber3(2);
  Car car1 = Car(name: 'Range Rover', model: 2023, color: 'White');
  print(
      'first car name ${car1.name}, car model ${car1.model}, car color ${car1.color}');
  Car car2 = Car(name: 'Jeep', model: 2025, color: 'Black');
  print(
      'second car name ${car2.name}, car model ${car2.model}, car color ${car2.color}');
  var s1 = Student('Bert', 'Mark', 95);
  print(
      'Student first name ${s1.firstName}, Student last name ${s1.lastName}, Student grade ${s1.grade}');
  Student s2 = Student('Ernie', 'Mark', 85);
  print(
      'Student first name ${s2.firstName}, Student last name ${s2.lastName}, Student grade ${s2.grade}');
  var firstSquare = Square(5, 4, 25, 'red');
  print(firstSquare.area);
  var firstRec = Rectangle(5, 4, 25, 'red');
  print(firstRec.area);
  var weapone = Arbj('Black', 188, 'arbj', 50, 15000);
  print(weapone.name);
}

//1.
//! named
void primeNumber({required int n}) {
  if (n == 1 || n == 0) {
    print('Number is not prime.');
  }
  for (int i = 2; i < n; i++) {
    if (n % i == 0) print('Number is not prime.');
  }
  print('Number is prime.');
}

//! required
void primeNumber2(int n) {
  if (n == 1 || n == 0) {
    print('Number is not prime.');
  }
  for (int i = 2; i < n; i++) {
    if (n % i == 0) print('Number is not prime.');
  }
  print('Number is prime.');
}

//! optional
void primeNumber3([int? n ]) {
  if (n == 1 || n == 0) {
    print('Number is not prime.');
  }
  for (int i = 2; i *i< n!; ) {
    if (n % i == 0) print('Number is not prime.');
    break;
  }
  print('Number is prime.');
}

// 2.
class Car {
  final String name;
  final int model;
  final String color;
  Car({required this.name, required this.model, required this.color});
}

//3.
class Student {
  final String firstName;
  final String lastName;
  final int grade;
  Student(this.firstName, this.lastName, this.grade);
  void greetStudent() {
    print('Welcome Students');
  }
}

//4.
class Shape {
  late double width;
  late double height;
  late double area;
  // Shape(this.width, this.height, this.area);
  Shape(
    this.width,
    this.height,
    double area,
  ) {
    this.area = height * width;
  }
}

class Rectangle extends Shape {
  late String color;
  Rectangle(double width, double height, double area, this.color)
      : super(1, 1, 0) {
    super.area = height * width * 2;
    super.width = width;
    super.height = height;
  }
}

class Square extends Shape {
  late String color;
  Square(double width, double height, double area, this.color)
      : super(8, 1, 0) {
    super.area = height * width;
    super.width = width;
    super.height = height;
  }
}

// 5.
class Weapone {
  final int numberOfShots;
  final String color;
  final String name;
  Weapone(this.color, this.numberOfShots, this.name);
}

class Kalashnikov extends Weapone {
  final int height;
  final int price;
  Kalashnikov(
      super.color, super.numberOfShots, super.name, this.height, this.price);
}

class Arbj extends Weapone {
  final int height;
  final int price;
  Arbj(super.color, super.numberOfShots, super.name, this.height, this.price);
}
