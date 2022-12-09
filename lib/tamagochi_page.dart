import 'package:flutter/material.dart';
import 'package:tamagochi/tamagochi_end_page.dart';
import 'models/mimikyu_model.dart';

class TamagochiPage extends StatefulWidget {
  const TamagochiPage({Key? key}) : super(key: key);

  @override
  State<TamagochiPage> createState() => _TamagochiPageState();
}

class _TamagochiPageState extends State<TamagochiPage> {
  MimikyuT mimikyuT = MimikyuT(60, 40, "Descansado", 'Limpo');

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
              //Tsext(' a fome esta no $mimikyuT.fome'),
              SizedBox(
                width: 10,
              ),
              Text(
                mimikyuT.felicidade.toString(),
                style: TextStyle(fontSize: 35),
              )
            ],
          ),
          Row(
            children: [
              Text(
                'Fome',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(
                width: 10,
              ),
              //Text(' a fome esta no $mimikyuT.fome'),
              Text(
                mimikyuT.fome.toString(),
                style: TextStyle(fontSize: 35),
              )
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
                mimikyuT.banho,
                style: TextStyle(fontSize: 20),
              )
            ],
          ),
          SizedBox(
            height: 120,
          ),
          Center(child: Image.asset('assets/imgs/mimikyu.gif')),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                child: FloatingActionButton(
                  child: Icon(Icons.front_hand),
                  backgroundColor: Colors.purple,
                  onPressed: () {
                    if (mimikyuT.felicidade <= 0) {
                      showDialog(
                          context: context,
                          builder: ((context) {
                            return AlertDialog(
                              title: const Text('Abandono'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: const <Widget>[
                                    Text(
                                        'Seu mimikyu ficou muito triste com você,'),
                                    Text('Ele acaba indo embora.'),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Okay'),
                                  onPressed: () {
                                    setState(() {
                                      mimikyuT.fome = mimikyuT.felicidade + 20;
                                    });
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                TamagochiEndPage()));
                                  },
                                ),
                              ],
                            );
                          }));
                    }
                    if (mimikyuT.felicidade == 20) {
                      showDialog(
                          context: context,
                          builder: ((context) {
                            return AlertDialog(
                              title: const Text('Brincando...'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: const <Widget>[
                                    Text('Seu mimikyu estava meio pra baixo,'),
                                    Text(
                                        'Ele parece estar um pouco melhor agora.'),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Okay'),
                                  onPressed: () {
                                    setState(() {
                                      mimikyuT.felicidade =
                                          mimikyuT.felicidade + 20;
                                    });
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          }));
                    }
                    if (mimikyuT.felicidade == 40) {
                      showDialog(
                          context: context,
                          builder: ((context) {
                            return AlertDialog(
                              title: const Text('Brincando...'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: const <Widget>[
                                    Text(
                                        'Seu mimikyu estava chamando sua atenção,'),
                                    Text(
                                        'Ele parece estar feliz que você tenha brincado com ele.'),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Okay'),
                                  onPressed: () {
                                    setState(() {
                                      mimikyuT.felicidade =
                                          mimikyuT.felicidade + 20;
                                    });
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          }));
                    }
                    if (mimikyuT.felicidade == 60) {
                      showDialog(
                          context: context,
                          builder: ((context) {
                            return AlertDialog(
                              title: const Text('Brincando...'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: const <Widget>[
                                    Text(
                                        'Seu mimikyu estava energetico por conta da ultima brincadeira,'),
                                    Text(
                                        'Ele parece acabou se sujando enquanto brincava.'),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Okay'),
                                  onPressed: () {
                                    setState(() {
                                      mimikyuT.banho = 'Sujo';
                                      mimikyuT.fome = mimikyuT.fome - 20;
                                      mimikyuT.felicidade =
                                          mimikyuT.felicidade + 20;
                                    });
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          }));
                    }

                    if (mimikyuT.felicidade == 80) {
                      showDialog(
                          context: context,
                          builder: ((context) {
                            return AlertDialog(
                              title: const Text('Brincando...'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: const <Widget>[
                                    Text(
                                        'Seu mimikyu está ficando cansado mais ainda sente vontade de brincar,'),
                                    Text(
                                        'Você faz carinho nele entre brincadeiras e isso o deixa feliz.'),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Okay'),
                                  onPressed: () {
                                    setState(() {
                                      mimikyuT.fome = mimikyuT.fome - 20;
                                      mimikyuT.felicidade =
                                          mimikyuT.felicidade + 20;
                                    });
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          }));
                    }
                    if (mimikyuT.felicidade >= 100) {
                      showDialog(
                          context: context,
                          builder: ((context) {
                            return AlertDialog(
                              title: const Text('Brincando...'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: const <Widget>[
                                    Text('Seu mimikyu está ficando cansado,'),
                                    Text(
                                        'Você o pega no colo e ele parece estar bem sonolento.'),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Okay'),
                                  onPressed: () {
                                    setState(() {
                                      mimikyuT.sono = 'Sonolento';
                                      mimikyuT.fome = mimikyuT.fome - 20;
                                    });
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          }));
                    }
                  },
                ),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                child: FloatingActionButton(
                  child: Icon(Icons.lunch_dining),
                  backgroundColor: Colors.purple,
                  onPressed: () {
                    if (mimikyuT.fome <= 0) {
                      showDialog(
                          context: context,
                          builder: ((context) {
                            return AlertDialog(
                              title: const Text('Fome'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: const <Widget>[
                                    Text(
                                        'Seu mimikyu ficou com muita fome e acabou morrendo,'),
                                    Text(
                                        'Ele pode estar em um lugar melhor agora...'),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Okay'),
                                  onPressed: () {
                                    setState(() {
                                      mimikyuT.fome = mimikyuT.felicidade + 2;
                                    });
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                TamagochiEndPage()));
                                  },
                                ),
                              ],
                            );
                          }));
                    }
                    if (mimikyuT.fome <= 20) {
                      showDialog(
                          context: context,
                          builder: ((context) {
                            return AlertDialog(
                              title: const Text('Alimentando...'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: const <Widget>[
                                    Text('Seu mimikyu estava com muita fome'),
                                    Text('Ele come a comida apressadamente.'),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Okay'),
                                  onPressed: () {
                                    setState(() {
                                      mimikyuT.fome = mimikyuT.fome + 20;
                                    });
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          }));
                    }

                    if (mimikyuT.fome == 40) {
                      showDialog(
                          context: context,
                          builder: ((context) {
                            return AlertDialog(
                              title: const Text('Alimentando...'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: const <Widget>[
                                    Text(
                                        'Seu mimikyu estava com um pouco de fome'),
                                    Text('Ele come toda a comida.'),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Okay'),
                                  onPressed: () {
                                    setState(() {
                                      mimikyuT.fome = mimikyuT.fome + 20;
                                    });
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          }));
                    }

                    if (mimikyuT.fome == 60) {
                      showDialog(
                          context: context,
                          builder: ((context) {
                            return AlertDialog(
                              title: const Text('Alimentando...'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: const <Widget>[
                                    Text('Seu mimikyu está alimentado,'),
                                    Text('Ele acaba comendo um pouco.'),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Okay'),
                                  onPressed: () {
                                    setState(() {
                                      mimikyuT.fome = mimikyuT.fome + 20;
                                    });
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          }));
                    }

                    if (mimikyuT.fome == 80) {
                      showDialog(
                          context: context,
                          builder: ((context) {
                            return AlertDialog(
                              title: const Text('Alimentando...'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: const <Widget>[
                                    Text('Seu mimikyu esta quase cheio,'),
                                    Text(
                                        'Ele comeu apenas um pouco e fica triste por você não brincar com ele.'),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Okay'),
                                  onPressed: () {
                                    setState(() {
                                      mimikyuT.felicidade =
                                          mimikyuT.felicidade - 20;
                                      mimikyuT.fome = mimikyuT.fome + 20;
                                    });
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          }));
                    }

                    if (mimikyuT.fome >= 100) {
                      showDialog(
                          context: context,
                          builder: ((context) {
                            return AlertDialog(
                              title: const Text('Alimentando...'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: const <Widget>[
                                    Text('Seu mimikyu está de buxin cheio.'),
                                    Text('Ele apenas ignora a comida.'),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Okay'),
                                  onPressed: () {
                                    setState(() {
                                      mimikyuT.sono = "Sonolento";
                                    });
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          }));
                    }
                  },
                ),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                child: FloatingActionButton(
                  child: Icon(Icons.shower),
                  backgroundColor: Colors.purple,
                  onPressed: () {
                    if (mimikyuT.banho == 'Limpo') {
                      showDialog(
                          context: context,
                          builder: ((context) {
                            return AlertDialog(
                              title: const Text('Dormindo...'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: const <Widget>[
                                    Text('Seu mimikyu não está sujo,'),
                                    Text(
                                        'Ele fica meio irritado por você querer que ele tome mesmo estando limpo.'),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Okay'),
                                  onPressed: () {
                                    setState(() {
                                      mimikyuT.felicidade =
                                          mimikyuT.felicidade - 20;
                                    });
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          }));
                    }
                    if (mimikyuT.banho == 'Sujo') {
                      showDialog(
                          context: context,
                          builder: ((context) {
                            return AlertDialog(
                              title: const Text('Dormindo...'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: const <Widget>[
                                    Text('Seu mimikyu estava sujinho,'),
                                    Text(
                                        'Ele fica contente e o banho acaba relaxando ele.'),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Okay'),
                                  onPressed: () {
                                    setState(() {
                                      mimikyuT.sono = "Sonolento";
                                      mimikyuT.banho = "Limpo";
                                    });
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          }));
                    }
                  },
                ),
              ),
              SizedBox(
                width: 20,
              ),
              SizedBox(
                child: FloatingActionButton(
                  child: Icon(Icons.bedtime),
                  backgroundColor: Colors.purple,
                  onPressed: () {
                    if (mimikyuT.sono == 'Descansado') {
                      showDialog(
                          context: context,
                          builder: ((context) {
                            return AlertDialog(
                              title: const Text('Dormindo...'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: const <Widget>[
                                    Text('Seu mimikyu não está com sono,'),
                                    Text(
                                        'Ele fica levemente irritado por você querer que ele durma.'),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Okay'),
                                  onPressed: () {
                                    setState(() {
                                      mimikyuT.felicidade =
                                          mimikyuT.felicidade - 20;
                                    });
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          }));
                    }
                    if (mimikyuT.sono == 'Sonolento') {
                      showDialog(
                          context: context,
                          builder: ((context) {
                            return AlertDialog(
                              title: const Text('Dormindo...'),
                              content: SingleChildScrollView(
                                child: ListBody(
                                  children: const <Widget>[
                                    Text('Seu mimikyu acaba capotando,'),
                                    Text(
                                        'Ele dorme durante muito tempo e acorda pronto para brincar mais.'),
                                  ],
                                ),
                              ),
                              actions: <Widget>[
                                TextButton(
                                  child: const Text('Okay'),
                                  onPressed: () {
                                    setState(() {
                                      mimikyuT.fome = 60;
                                      mimikyuT.felicidade = 40;
                                      mimikyuT.sono = "Descansado";
                                    });
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          }));
                    }
                  },
                  // 0.6, 0.4, "descansado",
                ),
              ),
            ],
          ),
        ]),
      ),
    ));
  }
}
