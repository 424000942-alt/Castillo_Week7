void main() {
  String studentName = 'Jake Lawrence';
  int totalItems = 50;
  double score = 42.0;
  bool passedAttendance = true;

  double finalGrade = (score / totalItems) * 100 + (passedAttendance ? 5 : 0);
  int roundedGrade = finalGrade.toInt();
  int cents = (finalGrade * 100).toInt() % 100; 
  int pointsLost = (totalItems - score.toInt()) ~/ 1; 

  bool hasPassed = finalGrade >= 75.0;
  bool isTopStudent = finalGrade > 90.0;
  bool needsHelp = finalGrade < 75.0;

  print('Student Name: $studentName');
  print('Exam Score: $score / $totalItems (Lost $pointsLost points)');
  print('Final Grade: ${finalGrade.toStringAsFixed(2)}% ($roundedGrade% and $cents/100)');
  print('Passed the course? $hasPassed');
  print('High Honors? $isTopStudent');
  print('Needs Remediation? $needsHelp');
}
