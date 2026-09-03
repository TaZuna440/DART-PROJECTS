import 'dart:io';

int counter = 1;
List<Map<String, dynamic>> students = [];

void main() {
  Menu();
}

void Menu() {
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
    double? choice = double.tryParse(stdin.readLineSync() ?? '');

    if (choice == null) {
      print('\nERROR: INVALID INPUT');
      continue;
    }

    switch (choice) {
      case 1:
        addStudent();
        break;

      case 2:
        viewStudent();
        break;

      case 3:
        updateStudent();
        break;

      case 4:
        deleteStudent();
        break;

      case 5:
        classAverage();
        break;
      case 6:
        highestGrade();
        break;
      case 7:
        lowestGrade();
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

void addStudent() {
  print('\n========= ADD STUDENT =========');
  stdout.write('Enter your name : ');
  String? name = stdin.readLineSync();

  stdout.write('Enter your age : ');
  int? age = int.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Enter your course : ');
  String? course = stdin.readLineSync();

  stdout.write('Enter your year level : ');
  String? year_level = stdin.readLineSync();

  stdout.write('Enter your general weighted average : ');
  double? gwa = double.tryParse(stdin.readLineSync() ?? '');

  students.add({
    'ID': counter,
    'Name': name,
    'Age': age,
    'Course': course,
    'Year_Level': year_level,
    'GWA': gwa,
  });
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
    print('ID : ${students[i]['ID']}');
    print('Name : ${students[i]['Name']}');
    print('Age : ${students[i]['Age']}');
    print('Course : ${students[i]['Course']}');
    print('Year Level : ${students[i]['Year_Level']}');
    print('GWA : ${students[i]['GWA']}');
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
  students[index]['Name'] = stdin.readLineSync();

  stdout.write('Enter New Student Age: ');
  students[index]['Age'] = int.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Enter New Student Course: ');
  students[index]['Course'] = stdin.readLineSync();

  stdout.write('Enter New Student Year Level: ');
  students[index]['Year_Level'] = stdin.readLineSync();

  stdout.write('Enter New Student GWA: ');
  students[index]['GWA'] = double.tryParse(stdin.readLineSync() ?? '');

  print('\nStudent Updated Successfully.');
}

void deleteStudent() {
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
    total += students[i]['GWA'];
  }
  double average = total / students.length;

  print('\n========= CLASS AVERAGE =========');
  print('The Class Average is ${average}');
}

void highestGrade() {
  if (isEmptyStudent()) {
    return;
  }

  Map<String, dynamic> highest = students[0];

  // The lowest is the highest
  for (int i = 0; i < students.length; i++) {
    if (students[i]['GWA'] < highest['GWA']) {
      highest = students[i];
    }
  }
  print('\n========= HIGHEST GRADE =========');
  print('Name : ${highest['Name']}');
  print('Age : ${highest['Age']}');
  print('Course : ${highest['Course']}');
  print('Year Level : ${highest['Year_Level']}');
  print('GWA : ${highest['GWA']}');
}

void lowestGrade() {
  if (isEmptyStudent()) {
    return;
  }

  Map<String, dynamic> lowest = students[0];

  // The highest is the lowest
  for (int i = 0; i < students.length; i++) {
    if (students[i]['GWA'] > lowest['GWA']) {
      lowest = students[i];
    }
  }
  print('\n========= LOWEST GRADE =========');
  print('Name : ${lowest['Name']}');
  print('Age : ${lowest['Age']}');
  print('Course : ${lowest['Course']}');
  print('Year Level : ${lowest['Year_Level']}');
  print('GWA : ${lowest['GWA']}');
}

// Repeatable Functions sabi ni sir follow the DRY principle
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
    if (students[i]['ID'] == id) {
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
