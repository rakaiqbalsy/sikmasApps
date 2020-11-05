import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class Topic4 extends StatefulWidget {
  @override
  _Topic4State createState() => _Topic4State();
}

class _Topic4State extends State<Topic4> {
  PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadfile();
  }

  loadfile() async {
    document = await PDFDocument.fromURL(
        "https://firebasestorage.googleapis.com/v0/b/sikmas-b7c8b.appspot.com/o/kunjungan%20masa%20nifas.pdf?alt=media&token=49ef3564-a636-4b56-8aa1-eda668a81d5b");

    setState(() {
      document = document;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kunjungan Masa Nifas'),
      ),
      body: Center(child: PDFViewer(document: document)),
    );
  }
}
