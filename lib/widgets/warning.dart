import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_bubble.dart';

class Warning extends StatelessWidget {
  final Color color;
  final RichText? richText;

  const Warning({
    this.color = Colors.white,
    this.richText,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: CustomBubble(color: color),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.topRight,
            child: Container(
                padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 4.w),
                child: SvgPicture.asset('assets/icons/close.svg')),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 20.w),
            child: richText,
          ),
        ],
      ),
    );
  }
}
