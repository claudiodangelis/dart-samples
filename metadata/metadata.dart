import 'packages/meta/meta.dart';


main(){
  var helloBox = new HelloBox();
  helloBox.oldHello();
  helloBox.newHello();
}

class HelloBox {

  @deprecated
  oldHello(){
    print("Hello");
  }
  
  newHello(){
    print("Hello world");
  }
  
  @override
  int get hascode => 1;
  
}

