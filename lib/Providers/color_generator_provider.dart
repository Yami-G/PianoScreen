import 'dart:math';
import 'dart:ui';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'color_generator_provider.g.dart';

@Riverpod(keepAlive: true)
class ColorGenerator extends _$ColorGenerator {
  @override
  Color build() {
    return const Color.fromARGB(255, 255, 255, 255); // equal to white
  }

  void getRandomColor() {
    Random random = Random();
    int r = random.nextInt(256); // generates a random value between 0 and 255 for red
    int g = random.nextInt(256); // generates a random value between 0 and 255 for green
    int b = random.nextInt(256); // generates a random value between 0 and 255 for blue

    state = Color.fromARGB(255, r, g, b);
  }
}
