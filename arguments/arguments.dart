main(){
  var args = new Options().arguments;
  if(args.length != 2){
    print('2 arguments requis');
    return;
  }
  var a = int.parse(args[0]);
  var b = int.parse(args[1]);
  var result = add(a, b);
  print("$a + $b = $result");
}

int add(int a, int b){
  return a + b;
}