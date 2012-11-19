  class User{
    String name,email,location;
  }

  class Moderator extends User {
    var banUser;
    var deleteMessage;
  }

  class Administrator extends Moderator {
    var banModerator;
  }

  class UserPremium extends User {
    String moreDetails;
    int licenseNumber;
    Date scadenzaContratto;
  }

  main(){

  var idUser = new User();
  assert(idUser is User);
  assert(idUser is! Moderator);

  }