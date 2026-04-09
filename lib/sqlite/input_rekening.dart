import 'package:flutter/material.dart';
import 'rekening_handler.dart';

class InputRekening extends StatefulWidget {
  const InputRekening({super.key});

  @override
  State<InputRekening> createState() => _InputRekeningState();
}

class _InputRekeningState extends State<InputRekening> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Input rekenin"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Saldo rek 1"),
            Text("Saldo rek 2"),
            TextButton(
                onPressed: (){
                  RekeningQueryHandler().safeTransfer(3, 2, 200000);
                },
                child: Text("Transfer")
            ),
            TextButton(
                onPressed: (){
                  RekeningQueryHandler().isiRekening(1, 1000000);
                },
                child: Text("Isi Rekening 1")
            ),
            TextButton(
                onPressed: (){
                  RekeningQueryHandler().isiRekening(1, 2000000);
                },
                child: Text("Isi Rekening 2")
            ),

          ],
        ),
      ),
    );
  }
}
