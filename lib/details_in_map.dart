import 'dart:io';

void main(){
  Map details = {
    'name': Null,
    'id': Null,
    'address': Null,
    'contact': Null,
    'email': Null,
    'occupation': Null,
    'gender': Null,
    'state': Null,
    'city': Null,
    'pincode': Null,
  };

  for(String key in details.keys){
    stdout.write('Enter $key : ');
    details[key] = stdin.readLineSync();
  }

  print('\n$details');
}