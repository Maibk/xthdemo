import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class OptionTilesWidget extends StatelessWidget {
  final IconData prefixIcon;
  final String text;

  const OptionTilesWidget({
    super.key,
    required this.prefixIcon,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 0.8.sw,
      decoration: BoxDecoration(
          color: const Color(0xffced9dc), borderRadius: BorderRadius.circular(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(prefixIcon),
              5.w.horizontalSpace,
              Text(
                text,
                style:
                    const TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const Icon(Icons.arrow_forward_ios_rounded)
        ],
      ).paddingSymmetric(horizontal: 20, vertical: 15),
    );
  }
}
