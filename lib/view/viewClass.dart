import 'package:flutter/material.dart';
import 'package:masterdice/globais.dart' as globais;

class ViewClass extends StatefulWidget {
  ViewClass({Key? key}) : super(key: key);

  @override
  _ViewClassState createState() => _ViewClassState();
}

class _ViewClassState extends State<ViewClass> {
  final classe = globais.classe;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Class'),
      ),
      body: _body(context),
    );
  }

  _body(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            _classes(context),
            _card(context),
            _proficiency(context),
          ],
        )
      ],
    );
  }

  _classes(BuildContext context) {
    return Container(
      height: 100,
      width: MediaQuery.of(context).size.width,
      margin: EdgeInsets.all(25),
      decoration: new BoxDecoration(
          borderRadius: BorderRadius.circular(10), color: Colors.cyan),
      child: Center(
        child: Text(
          classe.name!.toString(),
          style: TextStyle(
              fontFamily: 'Ancient_Medium', fontSize: 32, color: Colors.white),
        ),
      ),
    );
  }

  _card(BuildContext context) {
    return Container(
        height: 80,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(
          top: 130,
          left: 20,
          right: 20,
        ),
        //color: Colors.cyan,
        child: Card(
          color: Colors.cyan,
          child: ListTile(
            leading: Icon(Icons.add_box_rounded),
            title: Text(classe.subclasses!.first!.name.toString(),
                style: TextStyle(color: Colors.white)),
            subtitle: Text('Subclass', style: TextStyle(color: Colors.white)),
          ),
        ));
  }

  _proficiency(BuildContext context) {
    return Container(
        height: 450,
        width: MediaQuery.of(context).size.width,
        margin: EdgeInsets.only(top: 240, bottom: 140, left: 20, right: 20),
        decoration: new BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.grey),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: ListView(
            scrollDirection: Axis.vertical,
            children: [
              Text(
                  'Proficiency choises: ' +
                      classe.proficiencyChoices!.first!.choose.toString(),
                  style: TextStyle(color: Colors.white, fontSize: 32),
                  textAlign: TextAlign.justify),
              ...classe.proficiencyChoices!.map(
                (e) => Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Divider(),
                    Text(
                      e!.type.toString(),
                      style: TextStyle(color: Colors.white, fontSize: 32),
                      textAlign: TextAlign.justify,
                    ),
                    Divider(),
                    _proeficiencia(),
                    Divider(),
                    ...e.from!.map((element) => Text(element!.name.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 32),
                        textAlign: TextAlign.justify)),
                  ],
                ),
              )
            ],
          ),
        ));
  }

  _proeficiencia() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ...classe.proficiencies!.map((e) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Text(e!.name.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 32),
                    textAlign: TextAlign.justify)
              ],
            ))
      ],
    );
  }
}
