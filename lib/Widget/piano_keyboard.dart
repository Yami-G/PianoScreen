import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Model/sound_class.dart';

class PianoKeyBoard extends StatelessWidget {
  String keyOneSound;
  String middleKeySound;
  String keyTwoSound;

  PianoKeyBoard({
    super.key,
    required this.keyOneSound,
    required this.keyTwoSound,
    required this.middleKeySound,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        VerticalDivider(
          thickness: 3.w,
          width: 3.w,
          color: Colors.black,
        ),
        Stack(
          alignment: Alignment.center,
          children: [
            Row(
              children: [
                InkWell(
                  onTap: () {
                    PlaySound().playSound(keyOneSound);
                  },
                  child: Container(
                    color: Colors.white,
                    width: 57.w,
                  ),
                ),
                InkWell(
                  onTap: () {
                    PlaySound().playSound(keyTwoSound);
                  },
                  child: Container(
                    color: Colors.white,
                    width: 57.w,
                  ),
                ),
              ],
            ),
            Column(
              children: [
                InkWell(
                  onTap: () {
                    PlaySound().playSound(middleKeySound);
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(10.r),
                      ),
                      color: Colors.black,
                    ),
                    width: 25.w,
                    height: 165.h,
                  ),
                ),
                Expanded(
                  child: VerticalDivider(
                    width: 4.w,
                    thickness: 4.w,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
        VerticalDivider(
          width: 3.w,
          thickness: 3.w,
          color: Colors.black,
        ),
      ],
    );
  }
}
