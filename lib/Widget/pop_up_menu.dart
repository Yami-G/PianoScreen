import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../Model/sound_class.dart';
import '../resourses/images.dart';

class PopUpMenuCust extends StatelessWidget {
  const PopUpMenuCust({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      icon: Icon(
        Icons.queue_music,
        color: Colors.white,
        size: 30.sp,
      ),
      itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
        const PopupMenuItem<String>(
          value: Resources.play1,
          child: Text('Bach Prelude in C'),
        ),
        const PopupMenuItem<String>(
          value: Resources.play2,
          child: Text('Liszt Paganini'),
        ),
        const PopupMenuItem<String>(
          value: 'stop',
          child: Text('Stop playing'),
        ),
      ],
      onSelected: (v) {
        if (v == 'stop') {
          PlaySound().stopPlay();
        } else {
          PlaySound().playSound(v);
        }
      },
    );
  }
}
