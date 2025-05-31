
import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';

class Tasktimeline extends StatelessWidget {
  final Map<String, dynamic> detail;

  const Tasktimeline(this.detail, {super.key});

  @override
  Widget build(BuildContext context) {
    final Color t1Color = detail['t1color'] ?? Colors.red;
    final Color bgColor = detail['bgcolor'] ?? Colors.red.shade100;
    final String time = detail['time'] ?? '';
    final String title = detail['title'] ?? '';
    final String slot = detail['slot'] ?? '';

    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildTimeLine(t1Color),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  time,
                  style: const TextStyle(color: Colors.grey, fontSize: 15),
                ),
                const SizedBox(height: 5),
                if (title.isNotEmpty)
                  _buildCard(bgColor, title, slot),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCard(Color bgColor, String title, String slot) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10),
          bottomLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            blurRadius: 6,
            offset: const Offset(0, 3),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Colors.grey.shade900,
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
          const SizedBox(height: 6),
          Text(
            slot,
            style: TextStyle(
              color: Colors.grey.shade800,
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTimeLine(Color color) {
    return SizedBox(
      width: 30,
      height: 115,
      child: TimelineTile(
        alignment: TimelineAlign.manual,
        lineXY: 0,
        isFirst: true,
        indicatorStyle: IndicatorStyle(
          indicatorXY: 0,
          width: 20,
          indicator: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              border: Border.all(
                color: color,
                width: 5,
              ),
              shape: BoxShape.circle,
            ),
          ),
        ),
        afterLineStyle: LineStyle(
          color: color,
          thickness: 2,
        ),
      ),
    );
  }
}

