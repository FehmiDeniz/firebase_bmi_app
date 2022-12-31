import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Container uiTextfield(text, controller, inputType, bool obscure) {
  const value = 0xff2F80ED;
  return Container(
    margin: EdgeInsets.only(right: 8.w, top: 3.h),
    child: TextFormField(
      keyboardType: inputType,
      style: const TextStyle(color: Colors.black54),
      controller: controller,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2.w),
            borderSide: const BorderSide(color: Color(value))),
        focusColor: const Color(value),
        prefixIcon: const Icon(
          Icons.person,
          color: Color(value),
        ),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.w)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Color(value), width: 1),
            borderRadius: BorderRadius.circular(10)),
        fillColor: const Color(value),
        hintText: text,
        hintStyle: const TextStyle(
          color: Color(value),
        ),
      ),
    ),
  );
}
