import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class Topic2 extends StatefulWidget {
  @override
  _Topic2State createState() => _Topic2State();
}

class _Topic2State extends State<Topic2> {
  PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadfile();
  }

  loadfile() async {
    document = await PDFDocument.fromURL(
        "https://firebasestorage.googleapis.com/v0/b/sikmas-b7c8b.appspot.com/o/Tanda%20bahaya%20nifas%20design%20fix.pdf?alt=media&token=16a2d538-623b-47fe-abc1-743557fb2c72");

    setState(() {
      document = document;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tanda Bahaya Nifas'),
      ),
      body: Center(child: PDFViewer(document: document)),
    );
  }
}
