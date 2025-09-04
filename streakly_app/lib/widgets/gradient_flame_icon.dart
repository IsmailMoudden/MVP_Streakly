import 'package:flutter/material.dart';

class GradientFlameIcon extends StatelessWidget {
  final double size;

  const GradientFlameIcon({Key? key, this.size = 32.0}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (Rect bounds) {
        return const LinearGradient(
          colors: [Color(0xFFFF6A00), Color(0xFFFFD200)], // Orange to Yellow
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ).createShader(bounds);
      },
      child: Icon(
        Icons.local_fire_department,
        size: size,
        color: Colors.white, // This color will be overridden by the gradient
      ),
    );
  }
}