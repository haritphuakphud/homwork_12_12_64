
import 'dart:math';
import 'dart:io';
void main() {
  var i = 0;
  var r = Random();
  var answer = r.nextInt(100 + 1);
  var count = 1;
  while (true) {
    stdout.write('please guess the number: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if (guess == null) {
      i++;
    }
    else {
      if (guess == answer) {
        print('$guess is CORRECT❤');
        print('Total guesses is $count.');
        break;
      }
      else {
        if (guess > answer) {
          print('$guess is TOO HIGH!');
          count++;
          i++;
        }

        else {
          print('$guess is TOO LOW!');
          count++;
          i++;
        }
      }
    }
  }
}