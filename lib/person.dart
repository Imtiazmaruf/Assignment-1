

abstract class Role{
  void displayRole();
}
class Person implements Role {
  String _name;
  int _age;

  var _address;

  Person(this._name, this._age, this._address);


  @override
  void displayRole() {
  }
}
class Student extends Person{
  int studentId;
  double grade;
  List<int> courseScores = [];
  Student(super.name,super.age,super._address,this.studentId,this.grade){
    _name = _name;
    _age = _age;
    _address = _address;
    studentId = studentId;
    grade = grade;
    courseScores = courseScores;
  }
  void playfull(){
    print("Name : $_name");
    print("Age : $_age");
    print("Address : $_address");
    print('StudentId : $studentId');
    print('Grade : $grade');
  }
  @override
  void displayRole(){
    print("Student Information:\nRole : Student");
  }
  avg(){
    int sum = 0;
    for(int i = 0; i<courseScores.length; i++){
      sum+=courseScores[i];
    }
    double result = sum/3;
    print('Avg Score : ${result.toStringAsFixed(2)}');
  }
}
class Teacher extends Person{
  int teacherId;
  List<String> courseTaught = [];
  Teacher(super.name,super.age,super._address,this.teacherId){
    _name = _name;
    _age = _age;
    _address = _address;
    teacherId = teacherId;
    courseTaught = courseTaught;
  }
  void displayDetails(){
    print("Name : $_name");
    print("Age : $_age");
    print("Address : $_address");
    print('TeacherId : $teacherId');
  }
  @override
  void displayRole(){
    print("Teacher Information:\nRole : Teacher");
  }

  taught(){
    print("Course Taught:");
    for(int i = 0; i < courseTaught.length; i++){
      print("-${courseTaught[i]}");
    }
  }
}

