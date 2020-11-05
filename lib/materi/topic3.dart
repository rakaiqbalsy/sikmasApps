import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class Topic3 extends StatefulWidget {
  @override
  _Topic3State createState() => _Topic3State();
}

class _Topic3State extends State<Topic3> {
  PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadfile();
  }

  loadfile() async {
    document = await PDFDocument.fromURL(
        "https://firebasestorage.googleapis.com/v0/b/sikmas-b7c8b.appspot.com/o/cara%20menyusui.pdf?alt=media&token=d17d6940-a81d-44b6-bda9-623a2dd581b1");

    setState(() {
      document = document;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cara Menyusui'),
      ),
      body: Center(child: PDFViewer(document: document)),
    );
  }
}
