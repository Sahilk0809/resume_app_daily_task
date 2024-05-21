import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../../utils/global.dart';

class Invoice extends StatefulWidget {
  const Invoice({super.key});

  @override
  State<Invoice> createState() => _InvoiceState();
}

class _InvoiceState extends State<Invoice> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 2,
          shadowColor: Colors.black,
          leading: const Icon(Icons.account_circle),
          title: const Text(
            'Pdf Generator',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: GestureDetector(
                  onTap: () {
                    Navigator.of(context).pushNamed('/pdf');
                  },
                  child: const Icon(
                    Icons.picture_as_pdf,
                    size: 30,
                  )),
            ),
          ],
        ),
        body: Column(
          children: [
            ...List.generate(
              details.length,
              (index) => ListTile(
                title: Text(
                  'Name: ${details[index].name}',
                  style: const TextStyle(
                      fontSize: 20, fontWeight: FontWeight.bold),
                ),
                subtitle: Text(
                  'Category: ${details[index].category}',
                  style: const TextStyle(fontSize: 20),
                ),
                trailing: Text(
                  'Rs. ${details[index].price}/-',
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

Future<Uint8List> generatePdf() {
  final pdf = pw.Document();

  pdf.addPage(
    pw.Page(
      pageFormat: PdfPageFormat.a4,
      build: (pw.Context context) {
        return pw.Column(
          children: [
            ...List.generate(
              details.length,
              (index) => pw.Text(
                '\n\nName:   ${details[index].name}\nCategory:   ${details[index].category}\nPrice:   ${details[index].price}\n',
                style: const pw.TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
          ],
        );
      },
    ),
  );
  return pdf.save();
}
