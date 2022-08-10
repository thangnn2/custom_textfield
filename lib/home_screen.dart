import 'package:custom_textfield/injector.dart';
import 'package:custom_textfield/widgets/custom_textfield.dart';
import 'package:custom_textfield/widgets/warning.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'bloc/signup_bloc.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final signupBloc = injector.get<SignupBloc>();
    final textController = TextEditingController();
    final focusNode = FocusNode();

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        shape: const Border(
            bottom: BorderSide(color: Color(0xFFEBEBEB), width: 1)),
      ),
      backgroundColor: const Color(0xFFF6F5F3),
      body: BlocBuilder<SignupBloc, SignupState>(
        bloc: signupBloc,
        builder: (context, state) {
          return Container(
            padding: EdgeInsets.symmetric(horizontal: 13.w, vertical: 20.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Số điện thoại",
                  style: TextStyle(
                      color: Color(0xFF001626),
                      fontSize: 15,
                      fontWeight: FontWeight.w500),
                ),
                SizedBox(
                  height: 12.h,
                ),
                CustomTextField(
                    textController: textController,
                    textInputType: TextInputType.number,
                    onChanged: (value) {},
                    focusNode: focusNode),
                SizedBox(
                  height: 14.h,
                ),
                Warning(
                  color: const Color(0xFFCEE1FF),
                  richText: RichText(
                      text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Số điện thoại đã được đăng ký trước đó.",
                        style: TextStyle(
                          color: Colors.black,
                        )),
                    TextSpan(
                        text: "\nĐăng nhập ngay",
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold)),
                  ])),
                ),
                SizedBox(
                  height: 14.h,
                ),
                const Text(
                  "Mật khẩu",
                  style: TextStyle(
                      color: Color(0xFF001626),
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 8.h,
                ),
                CustomTextField(
                    textController: textController,
                    textInputType: TextInputType.number,
                    onChanged: (value) {},
                    focusNode: focusNode),
                SizedBox(
                  height: 25.h,
                ),
                const Text(
                  "Nhập lại mật khẩu mới",
                  style: TextStyle(
                      color: Color(0xFF001626),
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
                SizedBox(
                  height: 8.h,
                ),
                CustomTextField(
                    textController: textController,
                    textInputType: TextInputType.number,
                    onChanged: (value) {},
                    focusNode: focusNode),
                SizedBox(
                  height: 14.h,
                ),
                Warning(
                  color: const Color(0xFFFE5050),
                  richText: RichText(
                      text: const TextSpan(children: <TextSpan>[
                    TextSpan(
                        text: "Số điện thoại chưa được đăng ký trước đó.",
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    TextSpan(
                        text: "\nTạo tài khoản ngay",
                        style: TextStyle(
                            color: Colors.white, fontWeight: FontWeight.bold)),
                  ])),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
