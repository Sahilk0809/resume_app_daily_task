import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart' as pw;
import 'package:printing/printing.dart';

import '../../utils/global.dart';
import 'invoice.dart';

class PdfInvoice extends StatefulWidget {
  const PdfInvoice({super.key});

  @override
  State<PdfInvoice> createState() => _PdfInvoiceState();
}

class _PdfInvoiceState extends State<PdfInvoice> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: PdfPreview(
          build: (format) => generatePdf(),
        ),
      ),
    );
  }
}
