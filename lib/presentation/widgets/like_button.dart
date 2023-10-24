import 'package:flutter/material.dart';

class LikeButton extends StatelessWidget {
  final void Function()? onTap;
  final double? radius;
  final Widget icon;
  const LikeButton({super.key,
  required this.icon, required this.onTap, this.radius = 20});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CircleAvatar(
        radius: radius,
        backgroundColor: Colors.white24,
        child: icon,
      ),
    );
  }
}
