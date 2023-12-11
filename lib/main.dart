import 'person.dart';
void main(){
  Student s = Student("John Doe", 20, "123 Main st", 1178, 3.5);
  s.displayRole();
  s.playfull();
  s.courseScores = [90,85,82];
  s.avg();

  Teacher t = Teacher("Mrs.Smith", 35, "456 Oak St", 123004);
  t.displayRole();
  t.displayDetails();
  t.courseTaught = ["-math","-English","-Bangla"];
  t.taught();
}