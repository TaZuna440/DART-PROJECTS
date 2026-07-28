import 'dart:io';
void main() {
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

