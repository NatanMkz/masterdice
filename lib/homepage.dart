//import 'dart:js';

import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:masterdice/api/dndApi.dart';
import 'package:masterdice/view/classRPG.dart';
import 'package:masterdice/globais.dart' as globais;

// ignore: must_be_immutable
class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'D&D Help',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [_title()],
        ),
        GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 5.0,
          mainAxisSpacing: 5.0,
          padding: EdgeInsets.only(top: 200, bottom: 200),
          children: [
            _classes(context),
            _monsters(context),
            _mechanics(context),
            _antecedentes(context)
          ],
        )
      ],
    );
  }

  _title() {
    return Container(
      height: 120,
      width: 370,
      alignment: Alignment.center,
      margin: EdgeInsets.only(
        top: 10,
        left: 10,
        right: 10,
      ),
      decoration: new BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: Colors.brown,
      ),
      child: Text(
        'Welcome to your Favorite D&D App!',
        textAlign: TextAlign.justify,
        style: TextStyle(
            color: Colors.white, fontSize: 38, fontFamily: 'Ancient_Medium'),
      ),
    );
  }

  _classes(BuildContext context) {
    return Container(
        height: 400,
        width: 200,
        margin: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 10),
        decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.blue),
        child: MaterialButton(
            color: Colors.lightBlue,
            onPressed: () => _requisitor(context),
            child: Text(
              'Class and Skills!',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontFamily: 'Ancient_Medium'),
            )));
  }

  _requisitor(BuildContext context) {
    var className = ClassRequisitor().classesRPG();
    className.then((className) {
      // ignore: unrelated_type_equality_checks
      if (className != 0) {
        globais.listaClasses = className;
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => ClassRPG()));
      }
    });
    CircularProgressIndicator();
  }

  _monsters(BuildContext context) {
    return Container(
      //height: 200,
      //width: 100,
      margin: EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 10),
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.deepOrange),
      child: MaterialButton(
        color: Colors.deepOrange,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ClassRPG()));
        },
        child: Text(
          'Monsters of D&D',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontFamily: 'Ancient_Medium'),
        ),
      ),
    );
  }

  _mechanics(BuildContext context) {
    return Container(
      height: 200,
      width: 100,
      margin: EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 10),
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.green),
      child: MaterialButton(
        color: Colors.green,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ClassRPG()));
        },
        child: Text('Mechanic of Game',
            style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Ancient_Medium')),
      ),
    );
  }

  _antecedentes(BuildContext context) {
    return Container(
      height: 400,
      width: 200,
      margin: EdgeInsets.only(top: 0, left: 10, right: 10, bottom: 10),
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(5), color: Colors.deepPurple),
      child: MaterialButton(
        color: Colors.deepPurple,
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => ClassRPG()));
        },
        child: Text(
          'Background',
          style: TextStyle(
              color: Colors.white, fontSize: 20, fontFamily: 'Ancient_Medium'),
        ),
      ),
    );
  }
}
