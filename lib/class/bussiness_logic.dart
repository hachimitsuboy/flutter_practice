import "dart:math" as math;
import 'dart:async';

class Generator {
  var rand;
  var intStream;

  init(StreamController<int> stream){
    rand = math.Random();
    intStream = stream;
  }

  generate() {
    var data = rand.nextInt(100);
    print("generatorが$dataを作ったよ");
    intStream.sink.add(data);
  }
}

class Coordinator {
  var intStream;
  var strStream;

  init(StreamController<int> intStream, StreamController<String> strStream) {
    this.intStream = intStream;
    this.strStream = strStream;
  }

  //流れてきたものをintからstringにする
  coordinate(){
    intStream.stream.listen((data) async {
      String newData = data.toString();
      print("coordinatorが$dataから$newDataに変換した");
      strStream.sink.add(newData);
    });
  }
}

class Consumer {
  var strStream;
  init(StreamController<String> stream) {
    strStream = stream;
  }

  consume(){
    strStream.stream.listen((data) async {
      print("consumerが$dataを使った");
    });
  }
}