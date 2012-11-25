import "dart:isolate";

Stopwatch stopWatch;
main() {
  stopWatch = new Stopwatch();
  stopWatch.start();

  // Just synchronising results
  Futures.wait([one(), two(), three()]).then(myPrint);

  print("Start");
}

Future<String> one([prefix = ""]){
  var completer = new Completer();
  new Timer(1500, (t) => completer.complete("$prefix 1"));
  return completer.future;
}

Future<String> two([prefix = ""]){
  var completer = new Completer();
  new Timer(1000, (t) => completer.complete("$prefix 2"));
  return completer.future;
}

Future<String> three([prefix = ""]){
  var completer = new Completer();
  new Timer(500, (t) => completer.complete("$prefix 3"));
  return completer.future;
}

myPrint(data) {
  print("Ellapsed: ${stopWatch.elapsedMilliseconds}ms");
  print(data);
}

printAndCall(Future asyncFunction([prefix])) {
  return (value) {
    myPrint(value);
    return asyncFunction(value);
  };
}