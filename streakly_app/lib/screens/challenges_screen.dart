import 'package:flutter/material.dart';

class ChallengesScreen extends StatelessWidget {
  const ChallengesScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Icon(Icons.local_fire_department, color: Colors.orange.shade300),
            const SizedBox(width: 8),
            const Text('Streakly'),
          ],
        ),
        centerTitle: false,
        elevation: 0,
        actions: [
          IconButton(
            icon: const CircleAvatar(
              backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=8'),
              radius: 15,
            ),
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
          ),
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Header and search
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Your Challenges',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    hintText: 'Search challenges',
                    prefixIcon: const Icon(Icons.search),
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                TextButton.icon(
                  icon: const Icon(Icons.add_circle_outline),
                  label: const Text('New Challenge'),
                  onPressed: () {},
                ),
              ],
            ),
          ),
          // List of challenge items
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              children: [
                _buildChallengeItem(context, 'Drink Water', 'In Progress', '7:00 pm'),
                _buildChallengeItem(context, 'Meditation', 'Completed', '7:00 am'),
                _buildChallengeItem(context, 'Read', 'In Progress', '10:00 pm'),
                _buildChallengeItem(context, 'Morning Run', 'In Progress', '6:00 pm'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChallengeItem(BuildContext context, String title, String status, String time) {
    return InkWell(
      onTap: () {
        // Navigate to the streak page with challenge title as argument
        Navigator.pushNamed(context, '/streak', arguments: title);
      },
      child: Card(
        surfaceTintColor: Colors.white,
        color: Colors.white,
        margin: const EdgeInsets.only(bottom: 12),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.orange.shade900.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.all(8),
                child: Icon(Icons.emoji_events, color: Colors.orange.shade300),
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Color(0xFF2D3142),
                      ),
                    ),
                    Text(
                      status,
                      style: const TextStyle(
                        fontSize: 14,
                        color: Color(0xFF7D8597),
                      ),
                    ),
                  ],
                ),
              ),
              Text(
                time,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}