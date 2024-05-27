import 'dart:io';

void main() {
  // Display welcome message
  print('Welcome to the Calculator App');

  // Prompt user for input
  print('Enter the first number:');
  double num1 = double.parse(stdin.readLineSync()!);

  print('Enter the second number:');
  double num2 = double.parse(stdin.readLineSync()!);

  // Display menu of operations
  print('Select an operation:');
  print('1. Addition');
  print('2. Subtraction');
  print('3. Multiplication');
  print('4. Division');

  // Prompt user to choose an operation
  int choice = int.parse(stdin.readLineSync()!);

  // Perform operation based on user's choice
  double result = 0;
  switch (choice) {
    case 1:
      result = num1 + num2;
      print('Result: $num1 + $num2 = $result');
      break;
    case 2:
      result = num1 - num2;
      print('Result: $num1 - $num2 = $result');
      break;
    case 3:
      result = num1 * num2;
      print('Result: $num1 * $num2 = $result');
      break;
    case 4:
      if (num2 != 0) {
        result = num1 / num2;
        print('Result: $num1 / $num2 = $result');
      } else {
        print('Error: Division by zero is not allowed.');
      }
      break;
    default:
      print('Invalid choice. Please select a valid operation.');
  }
}

