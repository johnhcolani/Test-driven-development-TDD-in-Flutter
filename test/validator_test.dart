import 'package:flutter_test/flutter_test.dart';
import 'package:testing/validator.dart';

void main(){
  test('validate for empty email ID', (){

    //Arrange & Act
    var result = Validator.validateEmail('');

    // Assert

    expect(result, 'Required Field');
  });
  test('validate for invalid email ID', (){

    //Arrange & Act
    var result = Validator.validateEmail('vcfgfdsa');

    // Assert

    expect(result, 'Add valid email please');
  });

  test('validate for valid email ID', (){

    //Arrange & Act
    var result = Validator.validateEmail('johnacolani@gmail.com');

    // Assert

    expect(result, null);
  });

  test('Validate fo Empty password', (){

    //Arrange & Act
    var result = Validator.validPassword('');

    // Assert

    expect(result, 'Required Field');
  });

  test('Validate fo inValid password', (){

    //Arrange & Act
    var result = Validator.validPassword('pass');

    // Assert

    expect(result, 'Field Required at least 8 Characters');
  });
  test('Validate fo Valid password', (){

    //Arrange & Act
    var result = Validator.validPassword('password');

    // Assert

    expect(result, null);
  });
}