import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:naturemedix_admin/utils/_system.dart';

class SidebarButton {
  static Widget buttonStyle1({
    bool isSelected = false,
    Function()? onPressed,
    bool isNewNotify = false,
    String label = 'Button',
    IconData icon = Icons.abc,
  }) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 16),
      onPressed: onPressed,
      color: isSelected ? SystemColor.primary.withOpacity(0.1) : null,
      child: Row(
        children: [
          Icon(
            icon,
            size: 25,
            color: isSelected ? SystemColor.primary : SystemColor.neutralWHite,
          ),
          const Gap(8),
          Text(
            label,
            style: TextStyle(
              color:
                  isSelected ? SystemColor.primary : SystemColor.neutralWHite,
              fontSize: 16,
              fontWeight: FontWeight.w500,
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
