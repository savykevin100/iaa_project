import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'fr_FR': {
          'username': "Nom d'utilisateur",
          'password': 'Mot de passe',
          'forget': 'oublié ?',
          'to_log_in': 'SE CONNECTER',
          'to_log_in_with': 'Se connecter avec',
          'no_account': "Pas de compte",
          'create_account': "CREER UN COMPTE",
          'phone_number': 'Numéro de téléphone',
          'email': 'Adresse email',
          'confirm_password': 'Confirmation mot de passe',
          'register': "S'inscrire",
          'register_with': 'Créer un compte avec',
          'add_profile': 'Ajouter profile',
          'back': 'RETOUR',
          'forgot_password': 'MOT DE PASSE OUBLIE ?',
          'forgot_password_message':
              "Entrez l'adresse E-mail utilisée pour créer votre compte et nous vous enverrons un lien de reinitialisation de votre mot de passe",
          'send_email': 'ENVOYEZ EMAIL',
          'budgetNoExceeded': 'Super ! Vous etes dans les normes',
          'budgetExceeded': 'Vous avez depassé le montant mensuel',
          'limitedBudget':
              'Vous avez atteint la limite! Essayez de ne pas le dépasser',
          'congratulations': 'Félicitations',
          'oops': 'Oops!',
          'warning': 'Attention'
        },
        'en_US': {
          'username': "Username",
          'password': 'Password',
          'forgot': 'forgot ?',
          'to_log_in': 'To log in',
          'to_log_in_with': 'To log In with',
          'no_account': "No account",
          'create_account': "CREATE AN ACCOUNT",
          'phone_Number': 'Phone number',
          'email': 'Email address',
          'confirm_password': 'Confirmation password',
          'register': "Register",
          'register_with': 'Create an account with',
          'add_profile': 'Add profile',
          'back': 'Back',
          'forgot_password': 'Password forget?',
          'forgot_password_message':
              "Enter the email address used to create your account and we will send you a password reset link",
          'send_email': 'Send email',
          'budgetNoExceeded': 'Great! You are in standards',
          'budgetExceeded': 'You have exceeded the monthly amount',
          'limitedBudget': 'You have reached the limit! Try not to exceed it ',
          'congratulations': 'Congratulations',
          'oops': 'Oops!',
          'warning': 'Warning'
        }
      };
}
