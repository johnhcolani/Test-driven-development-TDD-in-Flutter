class Validator {

  static String? validateEmail(String email){
  if(email.isEmpty ){
    return 'Required Field';
  }
String pattern =r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$';
RegExp regExp = RegExp(pattern);
  if(!regExp.hasMatch(email)){
    return 'Add valid email please';
  }

  }
  static String? validPassword (String password){
if(password.isEmpty){
  return 'Required Field';
}
if(password.length <8){
  return 'Field Required at least 8 Characters';
}
  }


}