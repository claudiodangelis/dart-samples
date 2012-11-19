main(){

  String name = "John";
  String surname ="Doe";

  // Within a string, vars begin with $
  print('Name is $name, surname is $surname');

  // Look at the ${variable.method}'s structure

  print('${name.toUpperCase()}');

  // we don't actually need single quote if argument of `print()` is nothing but a var

  print(name.toLowerCase());

  // how many characters in a string?

  print(name.length);

  // Interpolation with strings can span multiple lines, but returns a single-line string
  String interpolated = 'First string, ''second string, ''third string, '
  'fourth string, '
  'multiple lines, '
  'no big deal';

  print(interpolated);

  // or simply concatenate string with an other string
  print(name.concat("ny"));

  // .concat() method doesn't modify the variable value, $name is still "John"
  print(name);

  // put a "\n" in your string to have new line

  String multi= 'first line\nsecondline';
  print(multi);

  // check if name contains "ohn" and surname NOT contains "z"

  assert(name.contains("ohn") && !surname.contains("z"));

  // check if name IS "John"

  assert(name == "John");

  // remember: it's case sensitive

  assert(name != "john");

  // looping through strings's characters

  for ( var char in name.splitChars() ){
    print(char);
  }

  // printing charcodes of characters in string, pretty cool

  for ( var charCode in name.charCodes ){
    print(charCode);
  }

  // extracting substrings

  print('<title>TITLES ARE TOTALLY AWESOME</title>'.substring(7,33));

  // getting position of a character or a string, -1 if not found

  print('012ThreeFour'.indexOf('T'));
  print('012ThreeFour'.indexOf('Three'));
  print('012ThreeFour'.indexOf('Z'));

  // dynamical increment of a string

  String incr = '';

  for ( var x = 0 ; x<2 ; x++){
    for ( var char in ['b','y','e']){
      incr='${incr}${char}';
    }
  }

  print(incr);

}

/* OUTPUT:
dart --enable-checked-mode strings/strings.dart

Name is John, surname is Doe
JOHN
john
4
First string, second string, third string, fourth string, multiple lines, no big deal
Johnny
John
first line
secondline
J
o
h
n
74
111
104
110
TITLES ARE TOTALLY AWESOME
3
3
-1
byebye

*/