import 'dart:io';
import 'dart:isolate';
import 'dart:math';
import '../shared/shared.dart';

main() {
  print("Starting server");
  int port = 12345;

  // Create a WebSocket handler
  WebSocketHandler wsHandler = new WebSocketHandler();
  wsHandler.onOpen = onOpen;

  HttpServer server = new HttpServer();
  // Link the WebSocket handler with the server
  server.defaultRequestHandler = wsHandler.onRequest;
  server.listen('127.0.0.1', port);

  print('Listening for connections on http://127.0.0.1:$port');
}

// Handle a new web socket connection
onOpen(WebSocketConnection conn) {
  print('New WebSocket connection');

  conn.onMessage = (message) {
    print('Message received: $message');
    var opData = new AddOperationData.parse(message);
    longProcess(opData).then((result) => conn.send(result.toJSONString()));
  };
}

// Process a long add operation...
Future<AddOperationData> longProcess(AddOperationData opData) {
  Completer<AddOperationData> completer = new Completer<AddOperationData>();
  // Long processing, up to 10 seconds!
  new Timer(new Random().nextInt(10000), (t) {
    var result = new AddOperationData.resultsIn(opData.a, opData.b, opData.a + opData.b);
    completer.complete(result);
  });
  return completer.future;
}