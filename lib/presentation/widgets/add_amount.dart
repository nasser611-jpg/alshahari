import 'package:flutter/material.dart';
import 'package:alshahari/core/layout_colors.dart';
import 'package:alshahari/presentation/widgets/layout_prograph.dart';

class AddAmountBtn extends StatelessWidget {
  const AddAmountBtn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      height: 54,
      padding: const EdgeInsets.all(8),
      decoration: ShapeDecoration(
        gradient: LayoutColors.greenGradient,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
      child: Row(
        children: [
          Container(
            width: 41,
            height: 41,
            decoration: ShapeDecoration(
              color: const Color(0x4CFCFCFD),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(4)),
            ),
            child: const Icon(
              Icons.arrow_drop_up,
              color: LayoutColors.whiteColor,
              size: 36,
            ),
          ),
          const Expanded(
            child: Center(
              child: Text(
                " الإعدادات",
                style: Styles.textBtn,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
