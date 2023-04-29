import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../Widget/piano_keyboard.dart';
import '../resourses/images.dart';

class PianoScreen extends ConsumerWidget {
  const PianoScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset(
            Resources.crowd2,
            width: double.infinity,
            height: 400.h,
            fit: BoxFit.cover,
          ),
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: Row(
                children: [
                  PianoKeyBoard(
                    keyOneSound: Resources.key1,
                    keyTwoSound: Resources.key2,
                    middleKeySound: Resources.key3,
                  ),
                  PianoKeyBoard(
                    keyOneSound: Resources.key4,
                    keyTwoSound: Resources.key5,
                    middleKeySound: Resources.key6,
                  ),
                  PianoKeyBoard(
                    keyOneSound: Resources.key7,
                    keyTwoSound: Resources.key8,
                    middleKeySound: Resources.key9,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
