import 'dart:async';
import 'dart:math' as math;

class Japanese {
  var strStream;

  init(StreamController<String> stream) {
    strStream = stream;
  }
  talk(String word){
    print("日本人が$wordといった");
    // init忘れてエラーでた
    strStream.sink.add(word);
  }
}


class Foreigner {
  var strStream;

  init(StreamController<String> stream) {
    strStream = stream;
  }

  listen(){
    strStream.stream.listen((data){
      print("外国人は$dataを聞いて頷いた");
    });
  }
}