main(){

  List words = ['Lists','are','awesome'];

  // printing a list
  print(words);

  // how many items?
  print(words.length);

  // iterating a list, first way
  for(var word in words){
    print(word);
  }

  // iterating a list, second way, the classical way, useful when we need the index of item

  for ( var i = 0 ; i < words.length ; i++){
    print('${words[i]}: index $i');
  }

  // adding an element

  words.add('!');

  // this methods DOES modify the list, and should not be confused with string method .concat()
  print(words);

  // Add several items at once by .addAll()

  words.addAll(['and','methods','too','!']);

  print(words);

  // if we pass a collection of elements to .add(), they will be added as a list of elements
  // let's see:

  words.add(['the','most', 'awesomest', 'thing', 'ever']);

  for ( var word in words ){
    print(word);
  }


  // removing last item
  words.removeLast();

  // removing several items, starting from item 3 through 4 next items
  words.removeRange(3, 4);

  print(words);

  // searching for items, -1 if not found
  // second parameter of .indexOf() , optional, is starting point. default = 0
  print(words.indexOf("Lists"));
  print(words.indexOf( "Lists" , 2) );


}

/* OUTPUT

dart --enable-checked-mode lists/lists.dart

[Lists, are, awesome]
3
Lists
are
awesome
Lists: index 0
are: index 1
awesome: index 2
[Lists, are, awesome, !]
[Lists, are, awesome, !, and, methods, too, !]
Lists
are
awesome
!
and
methods
too
!
[the, most, awesomest, thing, ever]
[Lists, are, awesome, !]
0
-1

*/