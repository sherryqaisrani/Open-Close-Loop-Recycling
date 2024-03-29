import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../utils/colors.dart';
import '../../../../utils/file_path.dart';

class WelcomeBox extends StatelessWidget {
  const WelcomeBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 104.h),
      width: double.maxFinite,
      height: 354.h,
      decoration: BoxDecoration(
        color: AppColors.PRIMARY_COLOR,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(24.r),
          bottomRight: Radius.circular(24.r),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 22.h),
          // Waste - App - Logo
          SizedBox(
            width: 104.w,
            child: Image.asset(FilePath.WASTE_IMAGE),
          ),
          SizedBox(height: 28.0.h),
          // Welcome - Text
          Text(
            "Welcome to",
            style: TextStyle(
              color: AppColors.WHITE_COLOR,
              fontWeight: FontWeight.w400,
              fontSize: 18.sp,
            ),
          ),
          SizedBox(height: 11.0.h),
          // Sub - Heading - Waste - Management
          Text(
            "Open Close Loop Recycling",
            style: TextStyle(
              color: AppColors.WHITE_COLOR,
              fontWeight: FontWeight.w500,
              fontSize: 20.sp,
            ),
          ),
        ],
      ),
    );
  }
}
