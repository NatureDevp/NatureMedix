import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:naturemedix_admin/utils/_system.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.onPressed,
    required this.isSelected,
    this.label = 'Button',
    this.icon = Icons.abc,
    this.isNewNotify = false,
  });
  bool isSelected;
  Function()? onPressed;
  bool isNewNotify;
  String label;
  IconData icon;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 16),
      onPressed: onPressed,
      color: isSelected ? SystemColor.primary.withOpacity(0.1) : null,
      child: Row(
        children: [
          Icon(
            icon,
            size: 20,
            color: isSelected ? SystemColor.primary : SystemColor.neutralWHite,
          ),
          const Gap(8),
          Text(
            label,
            style: TextStyle(
              color:
                  isSelected ? SystemColor.primary : SystemColor.neutralWHite,
              fontSize: 14,
              fontWeight: FontWeight.w300,
            ),
          ),
          const Spacer(),
          Visibility(
            visible: isNewNotify,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
              color: Colors.red,
              child: const Text(
                'New',
                style: TextStyle(color: Colors.white, fontSize: 12),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
