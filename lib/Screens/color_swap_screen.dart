import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Providers/color_generator_provider.dart';

class ColorSwapScreen extends ConsumerWidget {
  const ColorSwapScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Consumer(
            builder: (x, ref, _) {
              Color randomColor = ref.watch(colorGeneratorProvider);
              return InkWell(
                onTap: () {
                  ref.watch(colorGeneratorProvider.notifier).getRandomColor();
                },
                child: Container(
                  color: randomColor,
                  width: double.infinity,
                  height: double.infinity,
                ),
              );
            },
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.w),
            child: const Text(
              'Tap the back Ground to change color If  you tap the text the color will not swap',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
