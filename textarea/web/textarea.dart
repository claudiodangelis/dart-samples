import 'dart:html';

void main() {
  ButtonElement button = query('#button');
  button.on.click.add(function(Event event){
    fn();
  });
}


fn(){
  TextAreaElement txt = query('#textarea');
  print(txt.value);
  }
