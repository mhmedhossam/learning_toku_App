import 'package:audioplayers/audioplayers.dart';

class ItemModel {
  final String enName;
  final String jaName;
  final String? image;
  final String sound;
  const ItemModel(
      {required this.enName,
      this.image,
      required this.jaName,
      required this.sound});

  playsound() {
    final player = AudioPlayer();
    player.play(AssetSource(sound));
  }
}

//class ItemModel {
 // final String enphrase;
  //final String jpphrase;
  //final String sound2;

  //const ItemModel(
    //  {required this.enphrase, required this.jpphrase, required this.sound2});
//}
