library shared_lib;

import "dart:json";

class AddOperationData {
  num a;
  num b;
  num result;

  AddOperationData(this.a, this.b);
  AddOperationData.resultsIn(this.a, this.b, this.result);

  AddOperationData.parse(String json) {
    var obj = JSON.parse(json);
    a = obj["a"];
    b = obj["b"];
    result = obj["result"];
  }

  toJSONString() => JSON.stringify({"a": a, "b": b, "result": result});

  toString() => "$a + $b = ${result == null ? '?' : result}";
}