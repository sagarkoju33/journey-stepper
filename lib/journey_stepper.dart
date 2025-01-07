library journey_stepper;

import 'package:flutter/material.dart';

class JourneyStepper extends StatelessWidget {
  const JourneyStepper({
    super.key,
    required this.leftTitle,
    required this.rightTitle,
    required this.icon,
    required this.iconBackgroundColor,
    required this.isLast,
  });
  final Widget leftTitle;
  final Widget rightTitle;
  final IconData icon;
  final Color iconBackgroundColor;
  final bool isLast;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16.0, right: 16, top: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Left Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                leftTitle,
                const SizedBox(height: 4),
              ],
            ),
          ),
          const SizedBox(width: 16),
          // Timeline Dot and Line
          Column(
            children: [
              // Icon for timeline event
              Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  color: iconBackgroundColor,
                  shape: BoxShape.circle,
                ),
                child: Icon(icon, size: 12, color: Colors.white),
              ),
              if (!isLast) // Draw a connecting line for all except the last item
                Container(
                  width: 2,
                  height: 100,
                  color: Colors.grey.shade400,
                ),
            ],
          ),
          const SizedBox(width: 16),
          // Right Content
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [rightTitle],
            ),
          ),
        ],
      ),
    );
  }
}
