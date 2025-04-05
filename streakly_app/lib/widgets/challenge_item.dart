import 'package:flutter/material.dart';
import '../models/challenge.dart';

class ChallengeItem extends StatelessWidget {
  final Challenge challenge;
  final VoidCallback? onTap;

  const ChallengeItem({
    Key? key,
    required this.challenge,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    challenge.title,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    challenge.time,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey.shade400,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Text(
                challenge.subtitle,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey.shade400,
                ),
              ),
              const SizedBox(height: 12),
              LinearProgressIndicator(
                value: challenge.progress,
                backgroundColor: Colors.grey.shade800,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.orange.shade300),
              ),
            ],
          ),
        ),
      ),
    );
  }
}