import 'package:audioplayers/audioplayers.dart';

class PlaySound {
  final player = AudioPlayer()..audioCache;

  void playSound(String path) {
    if (player.state == PlayerState.playing) {
      player.stop().then((v) {
        player.play(
          AssetSource(path),
        );
      });
    } else {
      player.play(
        AssetSource(path),
      );
    }
  }
}
