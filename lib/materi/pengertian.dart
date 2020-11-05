import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class Pengertian extends StatefulWidget {
  @override
  _PengertianState createState() => _PengertianState();
}

class _PengertianState extends State<Pengertian> {
  PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadfile();
  }

  loadfile() async {
    document = await PDFDocument.fromURL(
        "https://firebasestorage.googleapis.com/v0/b/sikmas-b7c8b.appspot.com/o/Pengertian%20Masa%20Nifas11.pdf?alt=media&token=f8246caa-a92c-4891-9990-60179a6b609d");

    setState(() {
      document = document;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pengertian Nifas'),
      ),
      body: Center(child: PDFViewer(document: document)),
    );
  }
}
