import 'package:flutter/material.dart';

import '../../../../core/utils/colors.dart';

class PetStatus extends StatelessWidget {
  final String title;
  final int status;
  const PetStatus({super.key, required this.title, required this.status});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            flex: 1,
            child: LinearProgressIndicator(
              value: status / 5,
              backgroundColor: ColorPicker.lightColor,
              color: ColorPicker.seedColor,
              minHeight: 10,
            ),
          ),
        ],
      ),
    );
  }
}
