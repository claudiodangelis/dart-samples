import "dart:html";

FileReader reader;
TextAreaElement textArea;
InputElement fileInput;

main(){
  // declare reader
  reader = new FileReader();
  fileInput = query("#fileInput");
  textArea = query("#textDisplay");
  // When input change, call loadFile method
  fileInput.on.change.add((e) => _loadFile());
}

_loadFile(){
  // Get file
  var textFile = fileInput.files[0];
  // Reader callback Fill text area when file is loaded
  reader.on.load.add((e) => textArea.value = reader.result);
  // Start reading file
  reader.readAsText(textFile);
}