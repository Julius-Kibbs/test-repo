// Task 1: Function to calculate the sum of two numbers
int calculateSum(int a, int b) {
  return a + b;
}

void main() {
  // Task 1: Example usage of the function to calculate the sum
  int a = 5;
  int b = 3;
  int sum = calculateSum(a, b);
  print('Task 1: The sum of $a and $b is $sum\n');

  // Task 2: Printing numbers from 1 to 10 using a for loop
  for (int i = 1; i <= 10; i++) {
    print(i);
  }
  print('');

  // Task 3: Implementing a switch statement for string values
  String day = 'Monday';
  switch (day) {
    case 'Monday':
      print('Most boring day of the week');
      break;
    case 'Tuesday':
    case 'Wednesday':
    case 'Thursday':
      print('It\'s a weekday.Still waiting on Friday');
      break;
    case 'Friday':
      print('Now this is the best day of the week');
      break;
    case 'Saturday':
    case 'Sunday':
      print('Hold on,Tomorrow is Monday again ?');
      break;
    default:
      print('Invalid day');
  }
  print('');

  // Task 4: Printing numbers from 20 to 10 using a while loop
  int num = 20;
  while (num >= 10) {
    print(num);
    num--;
  }
  print('');

  // Task 5: Checking if a number is even or odd using if-else statement
  int number = 15;
  if (number % 2 == 0) {
    print('$number is even');
  } else {
    print('$number is odd');
  }
  print('');

  // Task 6: Finding the largest number in a list
  List<int> numbers = [23, 56, 12, 78, 45, 91];
  int largest = numbers[0];
  for (int i = 1; i < numbers.length; i++) {
    if (numbers[i] > largest) {
      largest = numbers[i];
    }
  }
  print('The largest number in the list is $largest\n');

  // Task 7: Implementing a try-catch block to handle exceptions
  try {
    int result = 10 ~/ 0; // Division by zero, will throw an exception
    print('The result is $result');
  } catch (e) {
    print('Error: $e');
  }
}
