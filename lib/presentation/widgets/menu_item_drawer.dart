import 'package:flutter/material.dart';
import 'package:alshahari/core/layout_colors.dart';
import 'package:alshahari/presentation/widgets/layout_prograph.dart';


class MenuItemDrower extends StatelessWidget {
  const MenuItemDrower({
    super.key,
    required this.titel,
    required this.icon,
    this.isActive = false,
    this.onTap,
  });

  final String titel;
  final IconData icon;
  final bool isActive;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        margin: const EdgeInsets.all(4),
        width: double.infinity,
        decoration: BoxDecoration(
            color:
                isActive ? LayoutColors.gryColor : LayoutColors.lightGryColor,
            borderRadius: BorderRadius.circular(5)),
        child: Row(
          children: [
            
            Expanded(
                child: Text(
              titel,
              style: Styles.titelMenu,textDirection: TextDirection.rtl,
            )),Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                icon,
                color: isActive
                    ? LayoutColors.greenColor
                    : LayoutColors.dartGryColor,
                size: 24,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
