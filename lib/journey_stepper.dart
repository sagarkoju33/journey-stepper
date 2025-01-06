library journey_stepper;

import 'package:flutter/material.dart';

class ResponsiveTimeline extends StatelessWidget {
  const ResponsiveTimeline({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3FFE6),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        child: ListView(
          children: [
            // Timeline items
            buildTimelineItem(
              leftTitle: "Started",
              leftSubtitle: "You have setup your transfer",
              leftDate: "16th May 2023, 2:56 PM",
              rightTitle: "Setup",
              icon: Icons.play_arrow,
              iconBackgroundColor: Colors.green,
              isLast: false,
              rightSubtitle: "You have setup your transfer",
              rightDate: "11th May 2023, 2:56 PM",
            ),
            buildTimelineItem(
              leftTitle: "Payment",
              leftSubtitle: "We have received your AUD",
              leftDate: "17th May 2023, 3:56 PM",
              rightTitle: "Received",
              icon: Icons.add,
              iconBackgroundColor: Colors.green,
              isLast: false,
              rightSubtitle: "You have setup your transfer",
              rightDate: "11th May 2023, 2:56 PM",
            ),
            buildTimelineItem(
              leftTitle: "Payment",
              leftSubtitle: "We have received your AUD",
              leftDate: "17th May 2023, 3:56 PM",
              rightTitle: "Received",
              icon: Icons.receipt,
              iconBackgroundColor: Colors.green,
              isLast: false,
              rightSubtitle: "You have setup your transfer",
              rightDate: "11th May 2023, 2:56 PM",
            ),
            buildTimelineItem(
              leftTitle: "Payment",
              leftSubtitle: "We have received your AUD",
              leftDate: "17th May 2023, 3:56 PM",
              rightTitle: "Received",
              icon: Icons.receipt,
              iconBackgroundColor: Colors.green,
              isLast: false,
              rightSubtitle: "You have setup your transfer",
              rightDate: "11th May 2023, 2:56 PM",
            ),
            buildTimelineItem(
              leftTitle: "Payment",
              leftSubtitle: "We have received your AUD",
              leftDate: "17th May 2023, 3:56 PM",
              rightTitle: "Received",
              icon: Icons.receipt,
              iconBackgroundColor: Colors.green,
              isLast: true,
              rightSubtitle: "You have setup your transfer",
              rightDate: "11th May 2023, 2:56 PM",
            ),
          ],
        ),
      ),
    );
  }

  Widget buildTimelineItem({
    required String leftTitle,
    required String leftSubtitle,
    required String leftDate,
    required String rightTitle,
    required IconData icon,
    required Color iconBackgroundColor,
    required bool isLast,
    required String rightSubtitle,
    required String rightDate,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Left Content
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                leftTitle,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                leftSubtitle,
                style: const TextStyle(fontSize: 16, color: Colors.black54),
                textAlign: TextAlign.right,
              ),
              const SizedBox(height: 4),
              Text(
                leftDate,
                style: const TextStyle(fontSize: 14, color: Colors.black45),
                textAlign: TextAlign.right,
              ),
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
            children: [
              Text(
                rightTitle,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 4),
              Text(
                rightSubtitle,
                style: const TextStyle(fontSize: 16, color: Colors.black54),
                textAlign: TextAlign.right,
              ),
              const SizedBox(height: 4),
              Text(
                rightDate,
                style: const TextStyle(fontSize: 14, color: Colors.black45),
                textAlign: TextAlign.right,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ResponsiveTimeline(),
  ));
}

