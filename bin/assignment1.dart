

abstract class Role{
  void displayRole();
}
class Person implements Role {
  String _name;
  int _age;
  // ignore: prefer_typing_uninitialized_variables
  var _address;

  Person(this._name, this._age, this._address);

  /*String getName(){
    return _name;
  }
  //setter the set name_
  void setName(String name){
    _name = name;
  }
  //getter the get age
  int getAge(){
    return _age;
  }
  //setter the set age
  void setAge(int age){
    _age = age;
  }
  String getAddress(var address) {
    return _address;
  }
  void setAddress(var address){
    _address = address;
  }*/
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
    print('Avg Score : $result');
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
  //taught(){
  //List<String> courseTaught = ['b', 'c', 'd'];
  // for(String c in courseTaught){
  // print("Course Taught: $c");
  // }
  taught(){
    print("Course Taught:");
    for(int i = 0; i < courseTaught.length; i++){
      print("-${courseTaught[i]}");
    }
  }
}

