class Student{
  String name;
  int age;
  int level;

  Student(this.name, this.age, this.level);

  void displayInfo(){
    print("Student Info:Name:$name Age:$age Level:$level");
  }
}

class Teacher{
  String name;
  int age;
  String subject;

  Teacher(this.name, this.age, this.subject);

  void displayInfo(){
    print("Teacher Info:Name:$name Age:$age Subject:$subject");
  }
}

class Administration{
  late Teacher teacher;
  late Student student;

  Administration(){
    student = Student('Jake', 15, 7);
    teacher = Teacher('Maria', 33, 'Maths');
  }

  void show(){
    teacher.displayInfo();
    student.displayInfo();
  }
}

void main(){
  Administration administration = Administration();
  administration.show();
}