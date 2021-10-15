import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:masterdice/api/dndApi.dart';
// ignore: unused_import
import 'package:masterdice/models/classes.dart';
import 'package:masterdice/globais.dart' as globais;
import 'package:masterdice/view/viewClass.dart';

class ClassRPG extends StatelessWidget {
  ClassRPG({Key? key}) : super(key: key);
  final listaClasse = globais.listaClasses;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class and Habilitys'),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return Stack(
        alignment: Alignment.topCenter, children: [_listButton(context)]);
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
        color: Colors.blue,
      ),
      child: Text(
        'Classes And Skills',
        textAlign: TextAlign.justify,
        style: TextStyle(
            color: Colors.white, fontSize: 38, fontFamily: 'Ancient_Medium'),
      ),
    );
  }

  _listButton(BuildContext context) {
    var select;
    return ListView(scrollDirection: Axis.vertical, children: [
      _title(),
      Divider(),
      ...listaClasse.results!.map((e) {
        return Container(
          height: 150,
          width: MediaQuery.of(context).size.width,
          margin: EdgeInsets.all(20),
          decoration: new BoxDecoration(
              borderRadius: BorderRadius.circular(10), color: Colors.cyan),
          child: MaterialButton(
            onPressed: () async {
              globais.index = e.index.toString();
              select = ClassRequisitor().selectClass();
              await select.then((select) {
                if (select != 0) globais.classe = select;
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ViewClass()));
              });
            },
            child: Text(
              e.name.toString(),
              style: TextStyle(
                  fontFamily: 'Ancient_Medium',
                  fontSize: 32,
                  color: Colors.white),
            ),
          ),
        );
      })
    ]);
  }
}
