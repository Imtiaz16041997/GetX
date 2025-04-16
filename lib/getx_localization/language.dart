
import 'package:get/get.dart';

class Languages extends Translations{
  @override


  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'email_hint': 'Enter Email',
      'internet_exception': "we're unable to show results. \nPlease check your data\nconnection.",
      'retry':'Retry',
      'general_exception': "we're unable to process your request.\nPlease try again!!",
      'welcome_back': "Welcome \nBack",
      'login': "Login",
      'pass_hint': "Password",
      'home': "GetX",
    },
    'ur_PK':{
      'email_hint': 'احداث'
    }
  };

}