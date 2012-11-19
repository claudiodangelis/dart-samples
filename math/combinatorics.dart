import 'dart:math';

int factorial(n){
  int fact = 1;
  for ( var k = 1; k<n+1; k++){
    fact *= k;
  }

  return fact;
}

int binomial(int n,int k){

  // IMPORTANT! if we had used a "regular" division operator, /, the return value would have been a double
  // so we have to use "integer" division operator: ~/

  return factorial(n) ~/ (factorial(k)*(factorial(n-k)));
}

int howManyAnagrams(String str){
  int n = str.length;
  Map letters  = {};

  for (String letter in str.splitChars() ){
    if( letters[letter] != null){
      letters[letter]++;
    }
    else{
      letters[letter]=1;
    }
  }

  int denominator = 1;
  for ( var m in letters.values){
    denominator*=factorial(m);
  }
  return factorial(n)~/denominator;
}

int stirling2(int n,int k){
  // This function returns the stirling number of the second kind of a set with n items and k partitions
  // refer http://en.wikipedia.org/wiki/Stirling_numbers_of_the_second_kind

  int sum = 1;
  for (var j = 0; j<k+1 ; j++){
    sum+=pow(-1,j)*binomial(k,j)*pow((k-j),n);
  }
  return sum~/factorial(k);
}

main(){
  print(factorial(5)); // 120
  print(binomial(5,3)); // 10
  print(howManyAnagrams('ABC')); // 6
  print(howManyAnagrams('RADAR')); // 30
  print(stirling2(8,5)); // 1050

}
/* OUTPUT
 *
 * 120
 * 10
 * 6
 * 30
 * 1050
 * */
