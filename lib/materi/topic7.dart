import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class Topic7 extends StatefulWidget {
  @override
  _Topic7State createState() => _Topic7State();
}

class _Topic7State extends State<Topic7> {
  PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadfile();
  }

  loadfile() async {
    document = await PDFDocument.fromURL(
        "https://firebasestorage.googleapis.com/v0/b/sikmas-b7c8b.appspot.com/o/Mitos%20Fakta.pdf?alt=media&token=a2833b78-d2eb-47ee-a625-bb7fb7aa248f");

    setState(() {
      document = document;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mitos Atau Fakta'),
      ),
      body: Center(child: PDFViewer(document: document)),
    );
  }
}
