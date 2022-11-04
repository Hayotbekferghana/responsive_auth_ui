import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Material customTextField(
        {required String labelText, required TextInputType textInputType}) =>
    Material(
      borderRadius: BorderRadius.circular(15.r),
      elevation: 10.0,
      shadowColor: Colors.grey,
      child: TextField(
        keyboardType: textInputType,
        decoration: InputDecoration(
          labelText: labelText,
          enabled: true,
          enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.green,
            ),
            borderRadius: BorderRadius.circular(15.r),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.circular(15.r),
          ),
        ),
      ),
    );
