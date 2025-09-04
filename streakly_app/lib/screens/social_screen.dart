import 'package:flutter/material.dart';
import 'package:streakly_app/widgets/standard_card.dart';

class SocialScreen extends StatelessWidget {
  const SocialScreen({Key? key}) : super(key: key);

  // Dummy data for friends
  final List<Map<String, dynamic>> friends = const [
    {
      'name': 'Alice',
      'sharedStreaks': ['Reading Challenge', 'Morning Run', 'Meditation']
    },
    {
      'name': 'Bob',
      'sharedStreaks': ['Cycling', 'Coding', 'Yoga']
    },
    {
      'name': 'Charlie',
      'sharedStreaks': ['Cooking', 'Walking']
    },
  ];

  void _showSharedStreaks(BuildContext context, Map<String, dynamic> friend) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext ctx) {
        return Container(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Shared Streaks with ${friend['name']}",
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2D3142),
                ),
              ),
              const SizedBox(height: 12),
              ...List<Widget>.from(friend['sharedStreaks'].map<Widget>((streak) {
                return ListTile(
                  title: Text(
                    streak,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF2D3142),
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward, color: Colors.orange),
                  onTap: () {
                    Navigator.pop(ctx); // dismiss bottom sheet
                    // Navigate to the streak page (implementation to be added later)
                    Navigator.pushNamed(context, '/streak', arguments: streak);
                  },
                );
              })),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Social', style: TextStyle(color: Color(0xFF2D3142))),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: friends.length,
          itemBuilder: (context, index) {
            final friend = friends[index];
            return Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: StandardCard(
                backgroundColor: Colors.white,
                child: ListTile(
                  leading: const CircleAvatar(
                    backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=1'),
                  ),
                  title: Text(
                    friend['name'],
                    style: const TextStyle(
                      fontSize: 16,
                      color: Color(0xFF2D3142),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  trailing: const Icon(Icons.arrow_forward, color: Colors.orange),
                  onTap: () => _showSharedStreaks(context, friend),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}