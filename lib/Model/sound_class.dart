import 'package:audioplayers/audioplayers.dart';

final player = AudioPlayer()..audioCache;

class PlaySound {
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

  void stopPlay() {
    if (player.state == PlayerState.playing) {
      player.stop();
    }
  }
}
