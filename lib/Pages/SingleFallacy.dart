import 'package:flutter/material.dart';

class SingleFallacy extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final Map data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text(data['title']),
        backgroundColor: Colors.grey[800],
      ),
      body: SingleChildScrollView (
        child: Padding(
          padding: const EdgeInsets.fromLTRB(12.0, 12.0, 12.0, 12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 50.0),

              LabelText('NAME'),
              SizedBox(height: 10.0),
              MainTitle(data['title']),

              SizedBox(height: 50.0),

              LabelText('DESCRIPTION'),
              SizedBox(height: 10.0),
              MainText(data['description'], 25),

              SizedBox(height: 40.0),

              LabelText('DETAILS'),
              SizedBox(height: 10.0),
              MainText(data['detail'], 18),

              SizedBox(height: 40.0),

              LabelText('EXAMPLE'),
              SizedBox(height: 10.0),
              MainText(data['example'], 18),

              SizedBox(height: 40.0),

            ],
          ),
        ),
      )
    );
  }
}


class MainTitle extends StatelessWidget {
  final String text;
  const MainTitle(this.text);
  @override
  Widget build(BuildContext context) {
    return  Text(
      text,
      style: TextStyle(
          color: Colors.white,
          fontSize: 55.0,
          letterSpacing: 2.0
      ),
    );
  }
}


class MainText extends StatelessWidget {
  final String text;
  final double size;
  const MainText(this.text, this.size);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
      child: Text(
        text,
        style: TextStyle(
            color: Colors.grey[300],
            fontSize: size,
            letterSpacing: 1.0
        ),
      ),
    );
  }
}

class LabelText extends StatelessWidget {
  final String text;
  const LabelText(this.text);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: Colors.grey[500],
          fontSize: 15.0,
          letterSpacing: 2.0
      ),
    );
  }
}