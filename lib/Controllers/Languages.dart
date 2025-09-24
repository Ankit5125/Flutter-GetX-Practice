import 'package:get/get_navigation/src/root/internacionalization.dart';

class Language extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
    'en_US': {
      'message': 'Ankit is very Good Boy',
      'name': 'hello, my name is Ankit Savaliya',
    },
    'hin_IND': {
      'message': 'अंकित बहुत अच्छा लड़का है',
      'name': 'नमस्ते, मेरा नाम अंकित सावलिया है',
    },
  };
}
