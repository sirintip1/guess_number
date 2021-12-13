import 'dart:io';
import 'dart:math';

void main() {
  var i = 0;
  var r = Random();
  var answer = r.nextInt(100); //สุ่มเลข 1-99
  var guess;
  int count = 0;
  do {
    stdout.write('Please guess the number: ');
    var input = stdin.readLineSync(); //รับเข้ามาเป็น string ต้องเปลี่ยน
     guess = int.tryParse(
        input!); //string ถูกแปลงเป็น จำนวนเต็ม ในตัวแปร guess4
    if (guess == null) {
      continue;
    } else {
      count++;

      if (guess == answer) {
        print('$guess CORRECT✔ → total guesses :꒰ $count ꒱✨');
      } else if (guess > answer) {
        print('$guess TOO HIGH!↗ ☹');
      } else {
        print('$guess TOO LOW!↘ ☹');
      }
    }
  }
    while (guess != answer);
    print('•┈••✦ ❤ ✦••┈•THE END 🤩•┈••✦ ❤ ✦••┈•');
  }
