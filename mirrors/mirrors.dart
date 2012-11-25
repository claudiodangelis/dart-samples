import "dart:mirrors";
import "message.dart";

main(){
  // Get the mirror system
  MirrorSystem ms = currentMirrorSystem();
  // Get the message_lib library
  LibraryMirror lm = ms.libraries['message_lib'];
  // Get the message class
  ClassMirror mirror = lm.classes['Message'];
  // Create a new instance of Message and invoke the render method
  mirror.newInstance('', ["Hello"]).then((InstanceMirror im) => im.invoke("render", []));
}