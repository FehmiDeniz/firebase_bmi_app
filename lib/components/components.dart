import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

Container uiTextfield(text, controller, inputType, bool obscure) {
  const value = 0xff2F80ED;
  return Container(
    margin: EdgeInsets.only(right: 8.w, top: 3.h),
    child: TextFormField(
      obscureText: obscure,
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

TextField uiBmiTextField(controller, text) {
  return TextField(
    style: const TextStyle(color: Colors.white),
    controller: controller,
    toolbarOptions: const ToolbarOptions(
      copy: false,
      cut: false,
      paste: false,
      selectAll: false,
    ),
    keyboardType: TextInputType.number,
    inputFormatters: [
      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
    ],
    decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(2.w),
            borderSide: const BorderSide(color: Colors.white)),
        focusColor: Colors.white,
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(5.w)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(10)),
        fillColor: Colors.white,
        labelText: text,
        labelStyle: TextStyle(color: Colors.white.withOpacity(0.8))),
  );
}
