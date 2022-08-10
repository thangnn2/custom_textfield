import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    required this.textController,
    this.focusNode,
    required this.textInputType,
    this.onChanged,
  }) : super(key: key);

  final TextEditingController textController;
  final FocusNode? focusNode;
  final TextInputType textInputType;
  final ValueChanged<String>? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      focusNode: focusNode,
      controller: textController,
      keyboardType: textInputType,
      onChanged: (value) {
        onChanged!.call(value);
      },
      onSubmitted: (value) {},
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: Color(0xFFCEE1FF), width: 0.5)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: const BorderSide(color: Color(0xFF001626), width: 0.3)),
        filled: true,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 16.w),
        suffixIcon: Container(
          padding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 13.w),
          child: SvgPicture.asset(
            'assets/icons/tick.svg',
          ),
        ),
      ),
    );
  }
}
