import 'package:flutter/material.dart';

List detailsText = [
  'All Inbox', 'Inbox', 'Starred', 'Snoozed', 'Important', 'Sent', 'Drafts', 'All Mail', 'Spam', 'Trash', 'Create New', 'Settings'
];

List detailsIcons = [
  Icons.all_inbox, Icons.inbox, Icons.star_border, Icons.access_time, Icons.label_important_outline_sharp, Icons.send, Icons.drafts, Icons.mail, Icons.error_outline, Icons.delete_sweep, Icons.add, Icons.settings
];

String gender = 'Male';

List<bool> hobby = [
  false, false, false,false
];
List hobbyType = [
  'Cricket', 'Football', 'Chess', 'Reading Books'
];

String firstName = '';
String lastName = '';
String phoneNumber = '';
String address = '';
String email = '';
String dob = '';
List hobbySelected = [];

List<InvoiceDetailsModel> details = [
  InvoiceDetailsModel(name: 'Lenovo V15', category: 'Laptop', price: '21000'),
  InvoiceDetailsModel(name: 'HP Victus', category: 'Laptop', price: '67000'),
  InvoiceDetailsModel(name: 'Acer Nitro', category: 'Laptop', price: '76000'),
];

class InvoiceDetailsModel{
  String? name;
  String? price;
  String? category;
  InvoiceDetailsModel({this.name, this.category, this.price});
}