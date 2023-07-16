import 'dart:io';
//import 'dart:math';

void main() {
  //1.
  print('Enter any number');
  int number = int.parse(stdin.readLineSync()!);
  if (number % 5 == 0) {
    print('FIZZ');
  } else if (number % 3 == 0) {
    print('BUZZ');
  } else if (number % 5 == 0 && number % 3 == 0) {
    print('FIZZBUZZ');
  }
  //2.
  print('Enter any two number');
  int x = int.parse(stdin.readLineSync()!);
  int y = int.parse(stdin.readLineSync()!);
  String operator = '-';
  switch (operator) {
    case '+':
      print(x + y);
      break;
    case '-':
      print(x - y);
      break;
    case '*':
      print(x * y);
      break;
    case '/':
      print(x / y);
      break;

    default:
      print('wrong');
  }
  //3.
  while (x >= 0) {
    print(x);
    x--;
  }
  //4
  for (double i = 0; i <= 1; i += 0.1) {
    print(i.toStringAsFixed(1));
    
  }
  //5
  print('Enter word');
  String word = stdin.readLineSync()!;
  String reversed = word.split('').reversed.join('');
  word == reversed ? print('palindrome') : print('not palindrome');
  //6
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  a = a.where((element) => element < 5).toList();
  print(a);
  //7
  int rows = 9;
  for (int i = 0; i < rows; i++) {
    for (int j = (rows - i); j > 1; j--) {
      stdout.write(" ");
    }
    for (int j = 0; j <= i; j++) {
      stdout.write("* ");
    }
    stdout.writeln();
  }
  //8
  for (var i = 0; i < 5; i++) {
    for (var j = 0; j <= i; j++) {
      stdout.write('*');
    }
    stdout.writeln();
  }
}
