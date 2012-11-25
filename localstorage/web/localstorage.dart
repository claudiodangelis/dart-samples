import "dart:html";

TextAreaElement area;

main(){
  area = query('#text');
  load();
  query('#save-text').on.click.add((e) => save());
}

load(){
  // Get data from local storage with key "value"
  String value = window.localStorage["value"];
  area.value = value == null ? "" : value;
}

save(){
  // put data in local storage with key "value"
  window.localStorage["value"] = area.value;
}