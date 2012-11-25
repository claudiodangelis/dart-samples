import 'dart:isolate';

main() {
  mainPrint("start");
  // timer1 runs in an new isolate with its own heap
  SendPort sender1 = spawnFunction(timer1);
  ReceivePort receiver1 = new ReceivePort();
  receiver1.receive((msg, reply) => mainPrint(msg));
  sender1.send("Start !", receiver1.toSendPort());

  // if main isolate terminates, the entire VM terminates
  spawnFunction(timer2);
  mainPrint("end");
}

timer1() {
  port.receive((msg, reply){
    print1(msg);
    new Timer.repeating(1000, (t) {
       tick(print1);
       reply.send(counter);
    });
  });
}

timer2() {
  new Timer.repeating(3000, (t) => tick(print2));
}

int counter = 0;
tick(myPrint(msg)) {
  myPrint((counter++).toString());
}

mainPrint(d) => print("main : $d");
print1(d) => print("First timer : $d");
print2(d) => print("Second timer : $d");