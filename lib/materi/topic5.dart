import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class Topic5 extends StatefulWidget {
  @override
  _Topic5State createState() => _Topic5State();
}

class _Topic5State extends State<Topic5> {
  PDFDocument document;

  @override
  void initState() {
    super.initState();
    loadfile();
  }

  loadfile() async {
    document = await PDFDocument.fromURL(
        "https://firebasestorage.googleapis.com/v0/b/sikmas-b7c8b.appspot.com/o/Gizi.pdf?alt=media&token=ec8a13d6-e76f-4c06-96c3-811afbc18f09");

    setState(() {
      document = document;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kebutuhan Gizi Pasca Nifas'),
      ),
      body: Center(child: PDFViewer(document: document)),
    );
  }
}
