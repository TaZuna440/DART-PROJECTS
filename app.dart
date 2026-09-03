import 'dart:io';

List<Map<String, dynamic>> students = [];

void main() {
  while (true) {
    print('\n===================================================');
    print('           STUDENT INFORMATION SYSTEM');
    print('===================================================');
    print('1. ADD STUDENT');
    print('2. VIEW STUDENT LIST');
    print('3. UPDATE STUDENT');
    print('4. DELETE STUDENT');
    print('5. CLASS AVERAGE');
    print('6. STUDENT WITH HIGHEST GRADE');
    print('7. STUDENT WITH LOWEST GRADE');
    print('8. EXIT');
    print('===================================================');

    stdout.write('Enter your choice: ');
    int? choice = int.tryParse(stdin.readLineSync() ?? '');

    switch (choice) {
      case 1:
        addStudent();
        break;

      case 2:
        viewStudents();
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
        print('\nThank you for using the system!');
        exit(0);

      default:
        print('\nERROR: Invalid input.');
    }
  }
}

// ======================= ADD STUDENT =======================

void addStudent() {
  stdout.write('\nEnter student name: ');
  String? name = stdin.readLineSync();

  stdout.write('Enter age: ');
  int? age = int.tryParse(stdin.readLineSync() ?? '');

  stdout.write('Enter course: ');
  String? course = stdin.readLineSync();

  stdout.write('Enter GWA: ');
  double? gwa = double.tryParse(stdin.readLineSync() ?? '');

  if (age == null || gwa == null) {
    print('\nInvalid input!');
    return;
  }

  students.add({'name': name, 'age': age, 'course': course, 'gwa': gwa});

  print('\nStudent added successfully!');
}

// ======================= VIEW STUDENTS =======================

void viewStudents() {
  if (students.isEmpty) {
    print('\nNo students found.');
    return;
  }

  print('\n============== STUDENT LIST ==============');

  for (int i = 0; i < students.length; i++) {
    print('\nStudent #${i + 1}');
    print('Name   : ${students[i]['name']}');
    print('Age    : ${students[i]['age']}');
    print('Course : ${students[i]['course']}');
    print('GWA    : ${students[i]['gwa']}');
  }
}

// ======================= UPDATE STUDENT =======================

void updateStudent() {
  if (students.isEmpty) {
    print('\nNo students available.');
    return;
  }

  viewStudents();

  stdout.write('\nEnter student number to update: ');
  int? index = int.tryParse(stdin.readLineSync() ?? '');

  if (index == null || index < 1 || index > students.length) {
    print('\nInvalid student number.');
    return;
  }

  index--;

  stdout.write('Enter new name: ');
  students[index]['name'] = stdin.readLineSync();

  stdout.write('Enter new age: ');
  students[index]['age'] = int.parse(stdin.readLineSync()!);

  stdout.write('Enter new course: ');
  students[index]['course'] = stdin.readLineSync();

  stdout.write('Enter new GWA: ');
  students[index]['gwa'] = double.parse(stdin.readLineSync()!);

  print('\nStudent updated successfully!');
}

// ======================= DELETE STUDENT =======================

void deleteStudent() {
  if (students.isEmpty) {
    print('\nNo students available.');
    return;
  }

  viewStudents();

  stdout.write('\nEnter student number to delete: ');
  int? index = int.tryParse(stdin.readLineSync() ?? '');

  if (index == null || index < 1 || index > students.length) {
    print('\nInvalid student number.');
    return;
  }

  students.removeAt(index - 1);

  print('\nStudent deleted successfully!');
}

// ======================= CLASS AVERAGE =======================

void classAverage() {
  if (students.isEmpty) {
    print('\nNo students available.');
    return;
  }

  double total = 0;

  for (var student in students) {
    total += student['gwa'];
  }

  double average = total / students.length;

  print('\nClass Average: ${average.toStringAsFixed(2)}');
}

// ======================= HIGHEST GRADE =======================
// NOTE: For GWA, 1.00 is the highest.

void highestGrade() {
  if (students.isEmpty) {
    print('\nNo students available.');
    return;
  }

  var highest = students[0];

  for (var student in students) {
    if (student['gwa'] < highest['gwa']) {
      highest = student;
    }
  }

  print('\nStudent with Highest Grade');
  print('Name : ${highest['name']}');
  print('GWA  : ${highest['gwa']}');
}

// ======================= LOWEST GRADE =======================
// NOTE: For GWA, 5.00 is the lowest.

void lowestGrade() {
  if (students.isEmpty) {
    print('\nNo students available.');
    return;
  }

  var lowest = students[0];

  for (var student in students) {
    if (student['gwa'] > lowest['gwa']) {
      lowest = student;
    }
  }

  print('\nStudent with Lowest Grade');
  print('Name : ${lowest['name']}');
  print('GWA  : ${lowest['gwa']}');
}
