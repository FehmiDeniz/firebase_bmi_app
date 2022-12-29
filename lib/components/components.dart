import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

//Password TextField

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8.w, top: 2.h),
      child: TextFormField(
        obscureText: true,
        keyboardType: TextInputType.visiblePassword,
        style: TextStyle(color: Colors.black54),
        // controller: controller.textMailController,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.w),
              borderSide: BorderSide(color: Color(0xff2F80ED))),
          focusColor: Colors.black,
          prefixIcon: Icon(
            Icons.person,
            color: Color(0xff2F80ED),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff2F80ED), width: 1),
              borderRadius: BorderRadius.circular(10)),
          fillColor: Color(0xff2F80ED),
          hintText: "Password",
          hintStyle: TextStyle(
            color: Color(0xff2F80ED),
          ),
        ),
      ),
    );
  }
}

//Mail TextField
class MailTextField extends StatelessWidget {
  const MailTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8.w, top: 3.h),
      child: TextFormField(
        keyboardType: TextInputType.emailAddress,
        style: TextStyle(color: Colors.black54),
        // controller: controller.textMailController,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(2.w),
              borderSide: BorderSide(color: Color(0xff2F80ED))),
          focusColor: Color(0xff2F80ED),
          prefixIcon: Icon(
            Icons.person,
            color: Color(0xff2F80ED),
          ),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.w)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xff2F80ED), width: 1),
              borderRadius: BorderRadius.circular(10)),
          fillColor: Color(0xff2F80ED),
          hintText: "Email",
          hintStyle: TextStyle(
            color: Color(0xff2F80ED),
          ),
        ),
      ),
    );
  }
}
