
## Flutterの基礎練習

## 5/1~5/2
・静的解析の導入
→標準で入れられているflutter_lintsによって、ビルド開始前にプログラミングの文法間違い（プログラムは動くけど、厳しめにいうとこんな風に書く）を教えてくれる。
今回のプログラムではhome_screenでは、lintsに記載されているルールに従わずに、普段自分が書いている流れで書いた。home_screen2ではlintsに記載されているルールに基づきプログラムを書いた。簡単なカウントアップアプリだったためか、ほとんどはconstのつけ忘れの警告だけだった.

const:コンパイル段階で値が決定され、代入などができない
final:コンパイル段階では決定していないが、ビルド段階で決定する

# 定するタイミングが違うことで、どんな違いがあるのかよくわからなかった

