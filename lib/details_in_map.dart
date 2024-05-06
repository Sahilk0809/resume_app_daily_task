import 'dart:io';

void main(){
  Map details = {
    'name': 'Sahil',
    'id': '1',
    'address': 'Sai Darshan',
    'contact': '5854845882',
    'email': 'rkfg524@gmail.com',
    'occupation': 'Service',
    'gender': 'Male',
    'state': 'Gujarat',
    'city': 'Surat',
    'pincode': '394210',
  };

  stdout.write('Enter Name : ');
  details.update('name', (value) => stdin.readLineSync()!);
  stdout.write('Enter ID : ');
  details.update('id', (value) => stdin.readLineSync()!);
  stdout.write('Enter Address : ');
  details.update('address', (value) => stdin.readLineSync()!);
  stdout.write('Enter Contact : ');
  details.update('contact', (value) => stdin.readLineSync()!);
  stdout.write('Enter email : ');
  details.update('email', (value) => stdin.readLineSync()!);
  stdout.write('Enter occupation : ');
  details.update('occupation', (value) => stdin.readLineSync()!);
  stdout.write('Enter gender : ');
  details.update('gender', (value) => stdin.readLineSync()!);
  stdout.write('Enter state : ');
  details.update('state', (value) => stdin.readLineSync()!);
  stdout.write('Enter city : ');
  details.update('city', (value) => stdin.readLineSync()!);
  stdout.write('Enter pincode : ');
  details.update('pincode', (value) => stdin.readLineSync()!);

  print('\n$details');
}