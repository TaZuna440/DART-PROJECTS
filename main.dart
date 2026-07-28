import 'dart:io';

void main() {
    var name = 'EJ Pomasin';
    var course = 'BSIT';
    var year = 3;
    var school = 'GRC';

    // Assigning value
    //   name = 'Byeon Woo Seok';

    // ENTER SUBJECT & GRADES
    print('Input Subjects');
    print('Subject 1    : ');
    var sub1 = stdin.readLineSync()!;
    print('Grade for $sub1    : ');
    var grade1 = double.parse(stdin.readLineSync()!);

    print('Subject 2    : ');
    var sub2 = stdin.readLineSync()!;
    print('Grade for $sub2    : ');
    var grade2 = double.parse(stdin.readLineSync()!);

    print('Subject 3    : ');
    var sub3 = stdin.readLineSync()!;
    print('Grade for $sub3    : ');
    var grade3 = double.parse(stdin.readLineSync()!);

    // Calculate Average and Check Remarks

    double avg = (grade1 + grade2 + grade3) / 3;
    var remarks = '';
    if(avg >= 75)
    {
        remarks = 'Passed';
    }
    else 
    {
        remarks = 'Failed';
    }
    

    print('==============================================');
    print('                STUDENT PROFILE       ');
    print('==============================================');
    print('Name    : $name');
    print('Course  : $course');
    print('Year    : $year');
    print('School  : $school');
    print('');
    print('==============================================');
    print('                SUBJECT GRADES       ');
    print('==============================================');
    print('$sub1    : $grade1');
    print('$sub2    : $grade2');
    print('$sub3    : $grade3');

    print('==============================================');
    print('                AVERAGE       ');
    print('==============================================');
    print("Average : ${avg.toStringAsFixed(2)}");
    print("Status  : $remarks");
    print('==============================================');


    // //   decimal numbers
    // double dec = 1.25;

    // print(dec);

    // bool passed = true;

    // print(passed);

    // final number = 23;
    // print(number);

    // const pi = 3.14;
    // print(pi);

    // //    Arithmetic Operation
    // var fNum = 20;
    // var lNum = 10;

    // var sum = fNum + lNum;
    // var diff = fNum - lNum;
    // var prod = fNum * lNum;
    // var quo = fNum / lNum;
    // var rem = fNum % lNum;

    // print('Sum : $sum');
    // print('Difference : $diff');
    // print('Product : $prod');
    // print('Quotient : $quo');
    // print('Remainder : $rem');
}
