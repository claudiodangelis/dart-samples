import 'dart:io';

final StringInputStream userInput = new StringInputStream(stdin);

void main() {
  print('Type your name right here in the console:');
  userInput.onLine = readInput;
}

void readInput(){
  final line = userInput.readLine();
  if (line == null){
    return;
  }
  print('Who\'s awesome?\n$line is awesome!'.toUpperCase());
  exit(0);
}