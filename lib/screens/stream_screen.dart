import 'package:flutter/material.dart';
import 'dart:async';

import 'package:static_analysis/class/translation.dart';

class StreamScreen extends StatefulWidget {
  const StreamScreen({Key? key}) : super(key: key);

  @override
  State<StreamScreen> createState() => _StreamScreenState();
}

class _StreamScreenState extends State<StreamScreen> {
  var strStream = StreamController<String>.broadcast();
  var japanese = Japanese();
  var foreigner = Foreigner();
  final myController = TextEditingController();

  @override
  void initState() {
    japanese.init(strStream);
    foreigner.init(strStream);
    foreigner.listen();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Stream"),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              const Text(
                "何かしらの日本語を入力してください",
                style: TextStyle(fontSize: 20),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 300,
                child: TextField(
                  controller: myController,
                  enabled: true,
                  maxLines: 1,
                  decoration: const InputDecoration(
                    labelText: "入力してください",
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                onPressed: () => _inputWord(),
                child: const Text("送信"),
              ),
              const SizedBox(
                height: 70,
              ),
              StreamBuilder(
                stream: strStream.stream,
                initialData: "日本語",
                builder: (context, snapshot) {
                  return Text("${snapshot.data}デスカ？イミガワカリマセン〜");
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  _inputWord() {
    var word = myController.text;
    print("$wordが入力された");
    japanese.talk(word);
  }
}
