import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {

  HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int counter_persona = 0;
  int counter_timer = 0;
  int counter_tel1 = 0;
  int counter_tel2 = 0;

  void btnPersona(){
    counter_persona++;
    setState(() {});
  }
  void btnTimer(){
    counter_timer++;
    setState(() {});
  }
  void btnTel1(){
    counter_tel1++;
    setState(() {});
  }
  void btnTel2(){
    counter_tel2++;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mc Flutter'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black)
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.person_pin, size: 50),
                    Column(
                      children: [
                        Text("Flutter McFlutter", style: TextStyle(fontSize: 25)),
                        Text("Experienced App Developer", style: TextStyle(fontSize: 15)),
                      ],
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("123 Main Street"),
                    Text("(415) 555-0198")
                  ]
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    IconButton(onPressed: () {
                      btnPersona();
                        ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                        const SnackBar(content: Text("Únete a un club con otras personas"))
                      );
                    }, icon: Icon(Icons.accessibility), color: counter_persona%2 == 0 ? Colors.black : Colors.indigo),
                    IconButton(onPressed: () {
                      btnTimer();
                        ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                        const SnackBar(content: Text("Cuenta regresiva para el evento: 31 días"))
                      );
                    }, icon: Icon(Icons.timer), color: counter_timer%2 == 0 ? Colors.black : Colors.indigo),
                    IconButton(onPressed: () {
                      btnTel1();
                        ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                        const SnackBar(content: Text("Llama al número 4155550198"))
                      );
                    }, icon: Icon(Icons.phone_android), color: counter_tel1%2 == 0 ? Colors.black : Colors.indigo),
                    IconButton(onPressed: () {
                      btnTel2();
                        ScaffoldMessenger.of(context)
                        ..hideCurrentSnackBar()
                        ..showSnackBar(
                        const SnackBar(content: Text("Llama al celular 3317865113"))
                      );
                    }, icon: Icon(Icons.phone_iphone), color: counter_tel2%2 == 0 ? Colors.black : Colors.indigo),
                  ],
                )
              ],
            ),
          ),
        ),
      )
    );
  }
}