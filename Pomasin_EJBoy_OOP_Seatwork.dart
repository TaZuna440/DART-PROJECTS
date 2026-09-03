// Part I — OOP Concept Identification
// Identify the OOP concept demonstrated by each statement.
// 1. A Student class contains name, studentId, and course.
// 2. Student student1 = Student("Juan", "2026-001", "BSIT");
// 3. A MobilePhone class contains a method called makeCall().
// 4. Smartphone extends MobilePhone.
// 5. A subclass provides its own implementation of displayInfo().
// 6. A class keeps its variables private and provides methods for accessing them.
// 7. A constructor automatically initializes an object's attributes.
// 8. Several Student objects are created from the same Student class.

// Answer using:
// Class, Object, Encapsulation, Inheritance, Polymorphism, Constructor,
// or Method.

// Answers:
// 1. Class - because it defines and acts as a blueprint.
// 2. Object - we are creating an instance from student class.
// 3. Method - it is a function inside a class.
// 4. Inheritance - smartphone is inheriting properties from mobile phone
// 5. Polymorphism - overriding method, same method name but different implementation in the subclass.
// 6. Encapsulation - hiding data and exposing it through getters/setters.
// 7. Constructor - automatically called when an object is created.
// 8. Object - Each student created from the Student class is an object.

// ===================================================================================
// Part II — Coding Exercise 1: Create a Class
// Create a Dart class named MobileApp.
// The class must have the following attributes:
// appName
// developer
// version
// Create a constructor that initializes all three attributes.
// Create a method:

// displayInfo()
// that displays the application's information.
// Expected Structure
// class MobileApp {
// String appName;
// String developer;
// String version;
// MobileApp(this.appName, this.developer, this.version);
// void displayInfo() {
// print("App Name: $appName");
// print("Developer: $developer");
// print("Version: $version");
// }
// }
// Create at least three objects representing different mobile applications.
// Tasks
// 1. Create the class.
// 2. Create three objects.
// 3. Call displayInfo() for each object.
// 4. Run the program.
// 5. Record the output.

// ================================= CODE 1 ============================================
// class MobileApp {
//   String appName;
//   String developer;
//   String version;

//   MobileApp(this.appName, this.developer, this.version);

//   void displayInfo() {
//     print('App Name : $appName');
//     print('Developer : $developer');
//     print('Version : $version');
//     print('===========================================');
//   }
// }

// void main() {
//   MobileApp app1 = MobileApp('Github', 'Linus', '1.21');
//   MobileApp app2 = MobileApp('Spotify', 'Spotify AB', '9.0.12');
//   MobileApp app3 = MobileApp('Minecraft', 'Mojang', '26.2');

//   app1.displayInfo();
//   app2.displayInfo();
//   app3.displayInfo();
// }

//=====================================================================================
// Part III — Observation 1
// After completing Exercise 1, answer the following.
// Questions
// 1. What happens when you create multiple objects from the same class?
// Observation: It only gets a copy of the attributes. They all follow
//                the same structure/blueprint but store different values.

// 2. Do the three objects contain the same data? Explain.
// Observation: They do not contain the same date because
//          different values were provided when each object was created

// 3. What is the purpose of the constructor?
// Observation: The purpose is to automatically initialize the objects attributes
//                when the object is created.

// 4. What would happen if you removed the displayInfo() method?
// Observation: It will return Error because the method displayInfo() is not defined.
//=====================================================================================
// Part IV — Coding Exercise 2: Encapsulation
// Create a class named UserAccount.
// The class should contain:
// username
// email
// password
// The password should not be directly accessible from outside the class.
// Implement:
// setPassword()
// checkPassword()
// displayUserInfo()

// Requirements
// ● Make the password private.
// ● Use a setter or method to modify the password.
// ● Use a method to verify whether a supplied password is correct.
// ● Do not display the actual password.
// Example:
// class UserAccount {
// String username;
// String email;
// String _password;
// UserAccount(this.username, this.email, this._password);
// void setPassword(String newPassword) {
// _password = newPassword;
// }
// bool checkPassword(String password) {
// return _password == password;
// }
// void displayUserInfo() {
// print("Username: $username");
// print("Email: $email");
// }
// }
// Tasks
// Create an account and test the following:
// Username: student01
// Email: student01@email.com
// Password: Mobile123
// Test:
// 1. Correct password
// 2. Incorrect password

// 3. Changing the password
// 4. Testing the new password

// ================================= CODE 2 ============================================

// class UserAccount {
//   String username;
//   String email;
//   String _password;

//   UserAccount(this.username, this.email, this._password);

//   void setPassword(String newPassword) {
//     _password = newPassword;
//   }

//   bool checkPassword(String password) {
//     return _password == password;
//   }

//   void displayUserInfo() {
//     print('Username : $username');
//     print('Email : $email');
//     print('Password : $_password'); // Do not display password.
//     print('Password : **********');
//   }
// }

// void main() {
//   UserAccount account = UserAccount(
//     'student01',
//     'student01@gmail.com',
//     'Mobile123',
//   );

//   print('=== TEST 1: Correct Password ===');
//   if (account.checkPassword('Mobile123')) {
//     print('Login Success!');
//   } else {
//     print('Login failed!');
//   }

//   print('');
//   print('=== TEST 2: Incorrect Password ===');
//   if (account.checkPassword('WrongPass')) {
//     print('Login Success!');
//   } else {
//     print('Login failed!');
//   }

//   print('');
//   print('=== TEST 3: Changing the Password ===');
//   account.setPassword('Newpass456');
//   print('Password has been changed');

//   print('');
//   print('=== TEST 4: Testing the New Password ===');
//   if (account.checkPassword('Newpass456')) {
//     print('Login Success!');
//   } else {
//     print('Login failed!');
//   }

//   print('');
//   print('=== Display User Information ===');
//   account.displayUserInfo();
// }

//=====================================================================================

// Part V — Observation 2: Encapsulation
// Answer the following questions.
// 1. Why should a password not be directly accessible?
// Observation: A password should not be directly accessible
//                   because it is sensitive information.

// 2. What is the purpose of _password?
// Observation: _password is used to store the user's password
//   while keeping it private within the class. It can be accessed
//    or changed through methods such as checkPassword() and setPassword().

// 3. What happens when you try to access _password directly from outside the
// class?
// Observation: _password is a private variable in Dart,
//        so it cannot be directly accessed from another library/file.

// 4. How can encapsulation improve the security of a mobile application?
// Observation: Encapsulation protects sensitive data by restricting direct access
//      to it. It allows the application to control how data is accessed or changed,
//          which helps prevent unauthorized access and accidental changes.

//=====================================================================================

// Part VI — Coding Exercise 3: Inheritance
// Create a parent class:

// MobileDevice
// with:
// brand
// model
// and a method:
// displayDeviceInfo()
// Create two child classes:
// AndroidDevice
// IOSDevice
// Both classes must inherit from MobileDevice.
// Requirements
// AndroidDevice should have:
// androidVersion
// IOSDevice should have:
// iosVersion
// Expected Structure
// class MobileDevice {
// String brand;
// String model;
// MobileDevice(this.brand, this.model);
// void displayDeviceInfo() {
// print("Brand: $brand");
// print("Model: $model");
// }
// }
// class AndroidDevice extends MobileDevice {
// String androidVersion;

// AndroidDevice(
// String brand,
// String model,
// this.androidVersion,
// ) : super(brand, model);
// void displayAndroidInfo() {
// displayDeviceInfo();
// print("Android Version: $androidVersion");
// }
// }
// Create an equivalent IOSDevice class.

// ================================= CODE 2 ============================================

// class MobileDevice {
//   String brand;
//   String model;

//   MobileDevice(this.brand, this.model);

//   void displayDeviceInfo() {
//     print("Brand: $brand");
//     print("Model: $model");
//   }
// }

// class AndroidDevice extends MobileDevice {
//   String androidVersion;

//   AndroidDevice(String brand, String model, this.androidVersion)
//     : super(brand, model);

//   void displayAndroidInfo() {
//     displayDeviceInfo();
//     print("Android Version: $androidVersion");
//   }
// }

// class IOSDevice extends MobileDevice {
//   String iosVersion;

//   IOSDevice(String brand, String model, this.iosVersion) : super(brand, model);

//   void displayIOSInfo() {
//     displayDeviceInfo();
//     print("iOS Version: $iosVersion");
//   }
// }

// void main() {
//   AndroidDevice android = AndroidDevice("Samsung", "Galaxy S25", "Android 15");

//   IOSDevice ios = IOSDevice("Apple", "iPhone 17", "iOS 26");

//   print("=== Android Device ===");
//   android.displayAndroidInfo();

//   print("");

//   print("=== iOS Device ===");
//   ios.displayIOSInfo();
// }

//=====================================================================================
// Part VII — Observation 3: Inheritance
// Answer the following:
// 1. Which attributes are inherited by AndroidDevice?
// Observation: AndroidDevice inherits the brand and model attributes from the
//      MobileDevice parent class. It also inherits the displayDeviceInfo() method.

// 2. Which attributes are inherited by IOSDevice?
// Observation: IOSDevice inherits the brand and model attributes from the
//      MobileDevice parent class. It also inherits the displayDeviceInfo() method.

// 3. What is the purpose of extends?
// Observation: extends is used to create a child class from a parent class.
//    It allows AndroidDevice and IOSDevice to inherit the attributes and
//      methods of MobileDevice.

// 4. What is the purpose of super()?
// Observation: super() is used to call the constructor of the parent class.
//        In this code, super(brand, model) passes the brand and model values
//        to the MobileDevice constructor.

// 5. Why is inheritance useful when developing mobile applications?
// Observation: Inheritance allows developers to reuse common code
//    instead of writing the same code repeatedly. For example,
//    both AndroidDevice and IOSDevice can reuse the brand, model,
//      and displayDeviceInfo() from MobileDevice while having their own
//      specific features.
//=====================================================================================

// Part VIII — Coding Exercise 4: Polymorphism
// Modify your previous program.
// Create a method in MobileDevice:
// void showPlatform() {
// print("Generic Mobile Platform");
// }
// Override the method in AndroidDevice:
// @override
// void showPlatform() {
// print("Android Platform");
// }
// Override it in IOSDevice:
// @override
// void showPlatform() {
// print("iOS Platform");
// }
// Then create:

// MobileDevice device1 = AndroidDevice(...);
// MobileDevice device2 = IOSDevice(...);
// Call:
// device1.showPlatform();
// device2.showPlatform();
// Expected Concept
// Even though both variables are declared as:
// MobileDevice
// the appropriate subclass implementation should execute.

// ================================= CODE 3 ============================================

// class MobileDevice {
//   String brand;
//   String model;

//   MobileDevice(this.brand, this.model);

//   void displayDeviceInfo() {
//     print("Brand: $brand");
//     print("Model: $model");
//   }

//   void showPlatform() {
//     print("Generic Mobile Platform");
//   }
// }

// class AndroidDevice extends MobileDevice {
//   String androidVersion;

//   AndroidDevice(String brand, String model, this.androidVersion)
//     : super(brand, model);

//   void displayAndroidInfo() {
//     displayDeviceInfo();
//     print("Android Version: $androidVersion");
//   }

//   @override
//   void showPlatform() {
//     print("Android Platform");
//   }
// }

// class IOSDevice extends MobileDevice {
//   String iosVersion;

//   IOSDevice(String brand, String model, this.iosVersion) : super(brand, model);

//   void displayIOSInfo() {
//     displayDeviceInfo();
//     print("iOS Version: $iosVersion");
//   }

//   @override
//   void showPlatform() {
//     print("iOS Platform");
//   }
// }

// void main() {
//   MobileDevice device1 = AndroidDevice("Samsung", "Galaxy S25", "Android 15");

//   MobileDevice device2 = IOSDevice("Apple", "iPhone 17", "iOS 26");

//   device1.showPlatform();
//   device2.showPlatform();
// }

//=====================================================================================
// Part IX — Observation 4: Polymorphism
// 1. What output did you observe?
// Observation: The output was “Android Platform” for device1
//                and “iOS Platform” for device2.

// 2. Why did device1.showPlatform() execute the Android implementation?
// Observation: device1 refers to an AndroidDevice object, so it executed
//            the showPlatform() method defined in the AndroidDevice class.

// 3. Why did device2.showPlatform() execute the iOS implementation?
// Observation: device2 refers to an IOSDevice object, so it executed the
//          showPlatform() method defined in the IOSDevice class.

// 4. What is method overriding?
// Observation: Happens when a child class provides its own implementation
//    of a method that already exists in the parent class.

//=====================================================================================
// Part X — Challenge Exercise: Mobile App Object Model
// Create an object-oriented model for a simple mobile application.
// Scenario
// You are developing a Student Mobile App.
// The application needs to manage students and courses.
// Create the following classes:
// Student
// Course
// MobileApp
// Student
// Attributes:
// studentId
// name
// email
// Methods:
// displayStudent()
// enrollCourse()
// Course
// Attributes:
// courseCode
// courseName
// units

// Methods:
// displayCourse()
// MobileApp
// Attributes:
// appName
// version
// Methods:
// displayAppInfo()
// Program Requirement
// Your program should be able to produce an output similar to:
// ==============================
// STUDENT MOBILE APP
// ==============================
// Application: Student Portal
// Version: 1.0
// Student Information
// ------------------------------
// ID: 2026-001
// Name: Juan Dela Cruz
// Email: juan@email.com
// Enrolled Course
// ------------------------------
// Code: IT101
// Course: Basic Mobile Development
// Units: 3

// ================================= CODE 4 ============================================
class Student {
  String studentId;
  String name;
  String email;
  Course? enrolledCourse;

  Student(this.studentId, this.name, this.email);

  void displayStudent() {
    print("Student Information");
    print("------------------------------");
    print("ID: $studentId");
    print("Name: $name");
    print("Email: $email");
  }

  void enrollCourse(Course course) {
    enrolledCourse = course;
  }
}

class Course {
  String courseCode;
  String courseName;
  int units;

  Course(this.courseCode, this.courseName, this.units);

  void displayCourse() {
    print("Enrolled Course");
    print("------------------------------");
    print("Code: $courseCode");
    print("Course: $courseName");
    print("Units: $units");
  }
}

class MobileApp {
  String appName;
  String version;

  MobileApp(this.appName, this.version);

  void displayAppInfo() {
    print("==============================");
    print("STUDENT MOBILE APP");
    print("==============================");
    print("Application: $appName");
    print("Version: $version");
  }
}

void main() {
  MobileApp app = MobileApp("Student Portal", "1.0");

  Student student = Student("2026-001", "Juan Dela Cruz", "juan@email.com");

  Course course = Course("IT101", "Basic Mobile Development", 3);

  student.enrollCourse(course);

  app.displayAppInfo();

  print("");
  student.displayStudent();

  print("");
  student.enrolledCourse!.displayCourse();
}
//=====================================================================================
// Part XI — Final Observation
// Answer the following questions based on the entire seatwork.

// 1. Class vs Object
// Explain the difference between a class and an object using your Student class as an
// example.
// Observation: A class is a blueprint used to define the properties and behaviors
//      of an object, while an object is an actual instance of that class. For example,
//    Student is a class that defines studentId, name, and email, while student is a
//      n object created from the Student class.

// 2. Encapsulation
// Give one example of how encapsulation can be applied to a real mobile application.
// Observation:Encapsulation can be applied to a mobile application by keeping
//        sensitive information, such as a user's password, private and allowing it
//        to be accessed or changed only through specific methods.

// 3. Inheritance
// Give one example of where inheritance could be useful in a mobile application.
// Observation: Inheritance can be useful in a mobile application when
//          different types of devices share common features. For example,
//          AndroidDevice and IOSDevice can inherit common properties such as
//          brand and model from a MobileDevice class.

// 4. Polymorphism
// Explain how polymorphism can make mobile application code more flexible.
// Observation: Polymorphism makes mobile application code more flexible
//        because the same method can perform different actions depending on
//        the object that uses it. For example, showPlatform() can display either
//        "Android Platform" or "iOS Platform" depending on the device.

// 5. OOP and Mobile Development
// Why do you think mobile frameworks such as Flutter benefit from object-oriented
// programming?
// Observation: Mobile frameworks such as Flutter benefit from object-oriented
//        programming because OOP helps organize code into classes and objects,
//        making applications easier to develop, reuse, maintain, and modify.
