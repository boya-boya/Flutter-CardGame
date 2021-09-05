// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  //const DetailPage({ Key? key }) : super(key: key);
  final title, subtitle, imgURL, detail;

  const DetailPage(this.title, this.subtitle, this.imgURL, this.detail);

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  var _title, _subtitle, _imgURL, _detail;

  @override
  void initState() {
    super.initState();
    _title = widget.title;
    _subtitle = widget.subtitle;
    _imgURL = widget.imgURL;
    _detail = widget.detail;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail"),
      ),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Text(_title, style: TextStyle(fontSize: 30)),
          Text(_subtitle, style: TextStyle(fontSize: 20, color: Colors.grey)),
          Image.network(
            _imgURL,
            height: 100,
            fit: BoxFit.cover,
          ),
          Text(_detail),
        ],
      ),
    );
  }
}
