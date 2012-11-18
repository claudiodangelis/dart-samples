  class Utente{
    String nome,email,provenienza;
  }

  class Moderatore extends Utente {
    var banUtente;
    var cancellaMessaggio;
  }

  class Amministratore extends Moderatore {
    var banModeratore;
  }

  class UtentePremium extends Utente {
    String dettaglioAggiuntivo;
    int numeroDiLicenza;
    Date scadenzaContratto;
  }

  main(){

  var idUtente = new Utente();
  assert(idUtente is Utente);
  assert(idUtente is! Moderatore);
   }