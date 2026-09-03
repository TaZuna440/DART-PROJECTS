import 'dart:io';

void main() {
  StudentInformationSystem access = StudentInformationSystem();
  Menu menu = Menu(access);

  menu.startOperation();
}

class Student {
  int id = 0;
  String name = '';
  int age = 0;
  String course = '';
  String yearLevel = '';
  double gwa = 0;

  Student(this.id, this.name, this.age, this.course, this.yearLevel, this.gwa);

  void displayInfo() {
    print('Name : ${this.name}');
    print('Age : ${this.age}');
    print('Course : ${this.course}');
    print('Year Level: ${this.yearLevel}');
    print('GWA : ${this.gwa}');
  }
}

class StudentInformationSystem {
  List<Student> students = []; // a class as the blueprint
  int counter = 1;

  void addStudent() {
    print('\n========= ADD STUDENT =========');
    stdout.write('Enter your name : ');
    String? name = stdin.readLineSync();
    if (name == null) {
      print('Input Error.');
      return;
    }

    stdout.write('Enter your age : ');
    int? age = int.tryParse(stdin.readLineSync() ?? '');
    if (age == null) {
      print('Input Error.');
      return;
    }

    stdout.write('Enter your course : ');
    String? course = stdin.readLineSync();
    if (course == null) {
      print('Input Error.');
      return;
    }

    stdout.write('Enter your year level : ');
    String? yearLevel = stdin.readLineSync();
    if (yearLevel == null) {
      print('Input Error.');
      return;
    }

    stdout.write('Enter your general weighted average : ');
    double? gwa = double.tryParse(stdin.readLineSync() ?? '');
    if (gwa == null) {
      print('Input Error.');
      return;
    }

    Student newStudent = Student(counter, name, age, course, yearLevel, gwa);
    students.add(newStudent);
    counter++;

    print('\nStudent Added Successfully.');
  }

  void viewStudent() {
    if (isEmptyStudent()) {
      return;
    }
    print('========= STUDENT LIST =========');
    for (int i = 0; i < students.length; i++) {
      print('');
      print('========= Student ${i + 1} =========');
      print('ID : ${students[i].id}');
      print('Name : ${students[i].name}');
      print('Age : ${students[i].age}');
      print('Course : ${students[i].course}');
      print('Year Level : ${students[i].yearLevel}');
      print('GWA : ${students[i].gwa}');
    }
  }

  void updateStudent() {
    viewStudent();
    int? index = searchStudent();
    if (index == null) {
      return;
    }
    print('========= UPDATE STUDENT =========');
    stdout.write('\nEnter New Student Name: ');
    String? name = stdin.readLineSync();
    if (name == null) {
      print('Input Error.');
      return;
    }

    stdout.write('Enter New Student Age: ');
    int? age = int.tryParse(stdin.readLineSync() ?? '');
    if (age == null) {
      print('Input Error.');
      return;
    }

    stdout.write('Enter New Student Course: ');
    String? course = stdin.readLineSync();
    if (course == null) {
      print('Input Error.');
      return;
    }

    stdout.write('Enter New Student Year Level: ');
    String? yearLevel = stdin.readLineSync();
    if (yearLevel == null) {
      print('Input Error.');
      return;
    }

    stdout.write('Enter New Student GWA: ');
    double? gwa = double.tryParse(stdin.readLineSync() ?? '');
    if (gwa == null) {
      print('Input Error.');
      return;
    }

    students[index].name = name;
    students[index].age = age;
    students[index].course = course;
    students[index].yearLevel = yearLevel;
    students[index].gwa = gwa;

    print('\nStudent Updated Successfully.');
  }

  void deleteStudent() {
    viewStudent();
    if (isEmptyStudent()) {
      return;
    }
    int? index = searchStudent();
    if (index == null) {
      return;
    }
    print('========= DELETE STUDENT =========');
    students.remove(students[index]);
    print('\nStudent Deleted Successfully.');
  }

  void classAverage() {
    if (isEmptyStudent()) {
      return;
    }
    double total = 0;
    for (int i = 0; i < students.length; i++) {
      total += students[i].gwa;
    }
    double average = total / students.length;

    print('\n========= CLASS AVERAGE =========');
    print('The Class Average is ${average}');
  }

  void highestGrade() {
    if (isEmptyStudent()) {
      return;
    }
    Student highest =
        students[0]; // making the highest variable as an object to compare

    // The lowest is the highest
    for (int i = 0; i < students.length; i++) {
      if (students[i].gwa < highest.gwa) {
        highest = students[i];
      }
    }
    print('\n========= HIGHEST GRADE =========');
    print('Name : ${highest.name}');
    print('Age : ${highest.age}');
    print('Course : ${highest.course}');
    print('Year Level : ${highest.yearLevel}');
    print('GWA : ${highest.gwa}');
  }

  void lowestGrade() {
    if (isEmptyStudent()) {
      return;
    }
    Student lowest = students[0]; // same as the highest lowest as an object
    // Highest is the Lowest
    for (int i = 0; i < students.length; i++) {
      if (students[i].gwa > lowest.gwa) {
        lowest = students[i];
      }
    }
    print('\n========= LOWEST GRADE =========');
    print('Name : ${lowest.name}');
    print('Age : ${lowest.age}');
    print('Course : ${lowest.course}');
    print('Year Level : ${lowest.yearLevel}');
    print('GWA : ${lowest.gwa}');
  }

  // DRY
  int? searchStudent() {
    if (isEmptyStudent()) {
      return null;
    }

    stdout.write('\nEnter Student Number: ');
    int? id = int.tryParse(stdin.readLineSync() ?? '');

    if (id == null || id < 1) {
      print('\nInvalid Student ID');
      return null; // babalik kay input
    }

    for (int i = 0; i < students.length; i++) {
      if (students[i].id == id) {
        return i;
      }
    }
    print('\nStudent Not Found.');
    return null;
  }

  bool isEmptyStudent() {
    if (students.isEmpty) {
      print('\nNo records found.');
      return true;
    }
    return false;
  }
}

class Menu {
  StudentInformationSystem system;
  Menu(this.system);

  void startOperation() {
    while (true) {
      print('');
      print('===========================================================');
      print('STUDENT INFORMATION SYSTEM');
      print('===========================================================');
      print('1. ADD STUDENT');
      print('2. VIEW STUDENT');
      print('3. UPDATE STUDENT');
      print('4. DELETE STUDENT');
      print('5. CLASS AVERAGE');
      print('6. STUDENT WITH HIGHEST GRADE');
      print('7. STUDENT WITH LOWEST GRADE');
      print('8. Exit');
      print('');

      stdout.write('\nENTER A NUMBER TO SELECT : ');
      int? choice = int.tryParse(stdin.readLineSync() ?? '');

      if (choice == null) {
        print('\nERROR: INVALID INPUT');
        continue;
      }

      switch (choice) {
        case 1:
          system.addStudent();
          break;

        case 2:
          system.viewStudent();
          break;

        case 3:
          system.updateStudent();
          break;

        case 4:
          system.deleteStudent();
          break;

        case 5:
          system.classAverage();
          break;
        case 6:
          system.highestGrade();
          break;
        case 7:
          system.lowestGrade();
          break;
        case 8:
          print('Terminating program...');
          print('Terminating program...');
          print('Terminating program...');
          print('Program Exited.');
          exit(0);

        default:
          print('\nERROR: INVALID INPUT');
      }
    }
  }
}
