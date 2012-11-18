main(){
	
	String template = "Hello _USERNAME_";

	List<String> usernames = ['Mike','Bob','Dale'];

	print(template);

	for (var username in usernames){

		print(template.replaceAll(new RegExp('_USERNAME_'), username));

	}

	print(template);

	List<String> junk = ['www.domain.com','bob@twnp.ks','aoisdj oaijsd ioajsdi ','98789','dale.cooper62@fbi.ks','III00099II'];

	RegExp isEmail = new RegExp('[a-zA-Z0-9.-]+@[a-zA-Z0-9.-]+\.[a-zA-Z0-9.-]');

	for ( var item in junk) {

		if(isEmail.hasMatch(item)) print(item);

	}

	
}