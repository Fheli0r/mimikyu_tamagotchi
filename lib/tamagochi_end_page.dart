import 'package:flutter/material.dart';
import 'package:tamagochi/models/mimikyu_model.dart';

class TamagochiEndPage extends StatelessWidget {
  TamagochiEndPage({super.key});
  MimikyuT mimikyuT = MimikyuT(0, 0, "em algum lugar", '.');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      alignment: Alignment.center,
      padding: const EdgeInsets.all(32),
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.cover, image: AssetImage('assets/imgs/room.jpg'))),
      child: SingleChildScrollView(
        child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
          Row(
            children: [
              Text(
                'Felicidade',
                style: TextStyle(fontSize: 25),
              ),
              //Text(' a fome esta no $mimikyuT.fome'),
              Text(mimikyuT.felicidade.toString())
            ],
          ),
          Row(
            children: [
              Text(
                'Fome',
                style: TextStyle(fontSize: 25),
              ),
              //Text(' a fome esta no $mimikyuT.fome'),
              Text(mimikyuT.fome.toString())
            ],
          ),
          Row(
            children: [
              Text(
                'Está',
                style: TextStyle(fontSize: 25),
              ),
              //text(' a fome esta no $mimikyuT.fome'),
              SizedBox(
                width: 5,
              ),
              Text(
                mimikyuT.sono,
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          SizedBox(
            height: 120,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [],
          ),
        ]),
      ),
    ));
  }
}
