import "dart:html";
import "dart:math";
import '../shared/shared.dart';

WebSocket webSocket;

main() {
  print("Starting client");
  // Call the send(num a, num b) method when click on the submit button
  addButton.on.click.add((e) => send(int.parse(aInput.value), int.parse(bInput.value)));

  int port = 12345;
  String url = "ws://127.0.0.1:$port";

  // Open a websocket
  webSocket = new WebSocket(url);
  // Handle message event from websocket
  webSocket.on.message.add((MessageEvent e) {
    print('Message received: ${e.data}');
    AddOperationData result = new AddOperationData.parse(e.data);
    addResult(result);
  });

  print("Client started");
}

send(num a, num b) {
  var opData = new AddOperationData(a, b);
  print("Send: $opData");
  // Send to websocket
  webSocket.send(opData.toJSONString());
}

addResult(AddOperationData result) {
  // Insert a the beginning of the list
  resultBox.insertBefore(new LIElement()..text = "$result", resultBox.$dom_firstChild);
}

InputElement get aInput => query("#aInput");
InputElement get bInput => query("#bInput");
InputElement get addButton => query("#addButton");
UListElement get resultBox => query("#result");