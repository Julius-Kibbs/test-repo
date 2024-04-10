// Object-Oriented Model with Classes and Inheritance
class Employee {
  String name;
  int age;

  Employee(this.name, this.age);

  void displayInfo() {
    print('Name: $name, Age: $age');
  }
}

class Manager extends Employee {
  int numberOfEmployees;

  Manager(String name, int age, this.numberOfEmployees)
      : super(name, age);

  @override
  void displayInfo() {
    super.displayInfo();
    print('Number of Employees Managed: $numberOfEmployees');
  }
}

// A Class that Implements an Interface
abstract class FileLoadable {
  void loadFromFile(String filePath);
}

class FileEmployee implements FileLoadable {
  @override
  void loadFromFile(String filePath) {
    // Logic to load data from file
    print('Loading data from file: $filePath');
  }
}

// Main method to demonstrate features
void main() {
  // Initialize instance with data from a file
  FileEmployee fileEmployee = FileEmployee();
  fileEmployee.loadFromFile('employee_data.txt');

  // Initialize instances of Employee and Manager classes
  List<Employee> employees = [
    Employee('John', 30),
    Employee('Alice', 25),
    Manager('Bob', 40, 10),
    Manager('Carol', 35, 15),
  ];

  // Display information of each employee
  for (var employee in employees) {
    employee.displayInfo();
    print('-----------------------');
  }
}
