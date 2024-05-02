import 'package:flutter/material.dart';
import 'package:alshahari/core/layout_colors.dart';
import 'package:alshahari/presentation/widgets/layout_prograph.dart';


class SubTitel extends StatelessWidget {
  const SubTitel({
    super.key,
    this.child = "",
  });

  final String child;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Divider(
          color: LayoutColors.gryColor,
        ),
        SizedBox(
          height: 29,
          width: double.infinity,
          child: Text(
            child,
            textAlign: TextAlign.end,
            style: Styles.mainTitelMenu,
          ),
        ),
      ],
    );
  }
}