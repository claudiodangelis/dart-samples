import 'dart:math' as math;

main(){

  // powers
  print(math.pow(3,2));

  // square roots
  print(math.sqrt(152399025)); // 12345.0

  // distance between points

  int ax = 15;
  int ay = 20;
  int bx = 35;
  int by = 5;

  print( math.sqrt( math.pow( ax-bx , 2 ) + math.pow( ay-by , 2 ) ) );

  // trigonometric functions
  // important: trigonometric methods use *radiants*
  // Declaration of .toRadians() below
  var alpha = 50;
  var beta = 60;

  double cosine50 = math.cos(toRadians(alpha));
  print(cosine50); // 0.6427876096865394


  // asserting trigonometric identities (refer to wikipedia: http://en.wikipedia.org/wiki/List_of_trigonometric_identities)
  assert( math.tan(toRadians(alpha)) == math.sin(toRadians(alpha))/math.cos(toRadians(alpha)) );
  assert( math.cos(toRadians(alpha))*math.cos(toRadians(beta)) == (math.cos((toRadians(alpha)+toRadians(beta))) + math.cos((toRadians(alpha) - toRadians(beta))))/2 );


}

toRadians(x){
  return x * (math.PI)/180;
}