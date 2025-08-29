import 'dart:io';

void main(){
  /// Grade Calculator
  print("Enter Name:");
  String? name = stdin.readLineSync();

  print("Enter assignment score (0-100.0):");
  double assignment = double.parse(stdin.readLineSync()!);
  
  print("Enter midterm score (0-100.0):");
  double midterm = double.parse(stdin.readLineSync()!);
  
  print("Enter final exam score (0-100.0):");
  double finalExam = double.parse(stdin.readLineSync()!);
  
  // Calculate weighted average
  double finalGrade = (assignment * 0.2) + (midterm * 0.3) + (finalExam * 0.5);
  
  print("\n=== Results ===");
  print("The entered name is ${name}");
  print("Assignment: ${assignment.toStringAsFixed(1)}%");
  print("Midterm: ${midterm.toStringAsFixed(1)}%");
  print("Final Exam: ${finalExam.toStringAsFixed(1)}%");
  print("Final Grade: ${finalGrade.toStringAsFixed(1)}%");
  
  // Determine Result grade
  String letterGrade;
  if (finalGrade >= 60) {
    letterGrade = "Passed";
  } else {
    letterGrade = "Failed";
  }
  
  print("Result: $letterGrade");
}
