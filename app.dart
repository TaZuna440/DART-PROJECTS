import 'dart:io';

List<Map<String,dynamic>> students = [];
void main() {
    print('===========================================================');
    print('STUDENT INFORMATION SYSTEM');
    print('===========================================================');
    print('1. ADD STUDENT');
    print('2. VIEW STUDENT');
    print('3. UPDATE STUDENT');
    print('4. DELETE STUDENT'); 
    print('');

    stdout.write('ENTER A NUMBER TO SELECT : ');
    var choice = double.parse(stdin.readLineSync()!);

    switch (choice) {
        case 1:
            addStudent();
        break;

        case 2:
            print('2. VIEW STUDENT');    
        break;

        case 3:
            print('3. UPDATE STUDENT');
        break;

        case 4:
            print('4. DELETE STUDENT');    
        break;

        default:
            print('ERROR: INVALID INPUT');
    }
}

// ADD STUDENT
void addStudent(){
    stdout.write('Enter your name : ');
    String? name = stdin.readLineSync();

    stdout.write('Enter your age : ');
    String? age = stdin.readLineSync();

    stdout.write('Enter your course : ');
    String? course = stdin.readLineSync();

    stdout.write('Enter your GWA : ');
    var gwa = double.parse(stdin.readLineSync()!);

    var status;

    if (gwa <= 1.75) {
        status = 'EXCELLENT';
    } else if (gwa <= 2.25) {
        status = 'Very Good';
    } else if (gwa <= 3.0) {
        status = 'Passed';
    }
    else {
        status = 'Probation';
    }

    print('==================================================');
    print('Name : $name');
    print('Age : $age');
    print('Course : $course');
    print('General Weighted Average : $gwa');
    print('Status : $status');
    print('==================================================');
}