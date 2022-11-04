import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Container iconContainer({required Widget child}) => Container(
      padding: EdgeInsets.all(5.0.w),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(2.w, 5.h),
            blurRadius: 10.0.r,
          ),
        ],
        borderRadius: BorderRadius.circular(100.r),
      ),
      child: child,
    );
