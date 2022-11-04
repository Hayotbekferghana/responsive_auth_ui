import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:responsive_auth_ui/utils/icons.dart';
import 'package:responsive_auth_ui/views/widgets/icon_container.dart';

Widget loginWithWidgets() => Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        iconContainer(
            child: Image.asset(
          MyIcons.google,
          width: 40.sp,
        )),
        iconContainer(
          child: Icon(Icons.apple, size: 40.sp),
        ),
        iconContainer(
          child: Icon(Icons.facebook_rounded, size: 40.sp, color: Colors.blue),
        ),
      ],
    );
