import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class Topic6 extends StatefulWidget {
  @override
  _Topic6State createState() => _Topic6State();
}

class _Topic6State extends State<Topic6> {
  PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadfile();
  }

  loadfile() async {
    document = await PDFDocument.fromURL(
        "https://firebasestorage.googleapis.com/v0/b/sikmas-b7c8b.appspot.com/o/Metode%20KB.pdf?alt=media&token=535011f8-58e7-4af5-b502-18a0890c6a54");

    setState(() {
      document = document;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('KB'),
      ),
      body: Center(child: PDFViewer(document: document)),
    );
  }
}
