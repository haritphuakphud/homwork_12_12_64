import 'dart:math';
import 'dart:io';
void main() {
  var i=0;
  var r = Random();
  var answer =r.nextInt(100);
  while (true) {
    stdout.write('please guess the number: ');
    var input = stdin.readLineSync();
    var guess = int.tryParse(input!);
    if(guess == answer){
      print('Congratulations');
      break;
    }
    else{
      print('Thy Again');
      i++;
    }

  }

}