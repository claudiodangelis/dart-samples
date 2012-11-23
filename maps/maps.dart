main(){

  //  A map is an object that associates keys and values.

  // You use both literals and constructors:

  var awesomeLiterals = { 'dog':'fido', 'cat':'fuffi','horse':'black arrow' };

  print(awesomeLiterals);


  // Using constructor new Map()

  Map<String,String> myMap = new Map();

  // Using a map as a dictionary

  myMap['one'] = 'uno';
  myMap['two'] = 'due';
  myMap['three'] = 'tre';

  // how many items?

  print(myMap.length);

  print(myMap['one']);
  print(myMap['two']);
  print(myMap['three']);

  // Maps hold any type:

  Map<String,int> poll = new Map();

  poll['Keith Emerson'] = 0;
  poll['Rick Wakeman'] = 0;

  for ( var i = 0 ; i<10; i++){
    poll['Keith Emerson']++;
  }

  for ( var i = 0 ; i<9; i++){
    poll['Rick Wakeman']++;
  }

  print(poll);

  // Get all the keys! Get all the values!

  print(poll.keys);
  print(poll.values);

  // .keys and .values are collections. Iterate all the keys!

  for (var key in poll.keys){
    print(key);
  }


  // let's see some useful methods: .containsKeys() and .containsValues() and .putIfAbsent()
  print(poll.containsKey('Rick Wakeman')); // true
  print(poll.containsValue(10)); // true

  poll.putIfAbsent('Vittorio Nocenzi', () => 7);

  // Look at the statement above: () => 7 is a function that returns 7 and assign it as the value of key

  print(poll);


  // A map within a map?

  Map<String,Map<String,String>> bands = new Map();

  bands['ELP'] = {
    'keyboard':'Keith Emerson',
    'bass guitar':'Greg Lake',
    'drums':'Carl Palmer'
    };

  bands['Yes'] = {
    'keyboard':'Rick Wakeman',
    'bass guitar':'Chris Squire',
    'vocals':'Jon Anderson',
    'lead guitar':'Steve Howe',
    'drums':'Bill Bruford'
    };

  print(bands);

  // who's the singer of Yes?

  print(bands['Yes']['vocals']);

  // is Carl Palmer the drummer of ELP?

  assert(bands['ELP']['drums'] == 'Carl Palmer');

  // Removing elements from a map

  bands['ELP'].remove('drums');
  print(bands['ELP']);

  // Add elements to a map by declaring a brand new element

  bands['ELP']['drums'] = 'Cozy Powell' ;

  print(bands['ELP']);

  // Iterating through key-value pairs:
  // remember that `bands` keys map to an other map

  bands.forEach((k,v){
    print('$k line up:');

    bands[k].forEach((k,v){
      print('$v on $k');
    });

  });



}
