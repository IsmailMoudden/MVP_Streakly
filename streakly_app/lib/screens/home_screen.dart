import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF9F9FB),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header
            const SizedBox(height: 16),
            Row(
              children: [
                Icon(Icons.local_fire_department, color: Colors.orange.shade400),
                const SizedBox(width: 8),
                const Text(
                  'Streakly',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const Spacer(),
                const CircleAvatar(
                  backgroundImage: NetworkImage('https://i.pravatar.cc/150?img=8'),
                  radius: 18,
                ),
              ],
            ),
            const SizedBox(height: 24),

            // Bloc "Conseil du jour"
            _sectionTitle("Conseil du jour"),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(16),
              ),
              child: SizedBox(
                height: 40,
                child: PageView(
                  scrollDirection: Axis.vertical,
                  children: const [
                    Center(
                      child: Text(
                        "N'abandonne pas après un échec.",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Center(
                      child: Text(
                        "Un streak gelé vaut mieux qu'un streak perdu.",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Center(
                      child: Text(
                        "Fais équipe pour plus de motivation.",
                        style: TextStyle(color: Colors.white),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 32),

            // Section "Aujourd'hui"
            _sectionTitle("Aujourd'hui"),
            _dailyChallenge("Lecture", "20 pages", "8:00 AM", 0.5),
            const SizedBox(height: 12),
            _dailyChallenge("Hydratation", "2 L d'eau", "10:00 AM", 0.8),
            const SizedBox(height: 12),
            _dailyChallenge("Sport", "30 min de course", "18:00", 0.2),
            const SizedBox(height: 32),

            // Section "Statistiques"
            _sectionTitle("Statistiques"),
            Row(
              children: [
                _miniCard("Streaks actifs", "5/6"),
                const SizedBox(width: 12),
                _miniCard("Total", "32"),
                const SizedBox(width: 12),
                _miniCard("Succès", "83%"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _dailyChallenge(String title, String subtitle, String time, double progress) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(title,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
              Text(time, style: const TextStyle(fontSize: 14, color: Colors.grey)),
            ],
          ),
          const SizedBox(height: 6),
          Text(subtitle, style: const TextStyle(fontSize: 14, color: Colors.grey)),
          const SizedBox(height: 12),
          LinearProgressIndicator(
            value: progress,
            backgroundColor: const Color(0xFFEDEDED),
            valueColor: const AlwaysStoppedAnimation<Color>(Color(0xFFFF8C42)),
          ),
        ],
      ),
    );
  }

  Widget _sectionTitle(String title) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xFF2D3142),
          ),
        ),
      );

  Widget _miniCard(String label, String value) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.1),
              blurRadius: 6,
              offset: const Offset(0, 2),
            ),
          ],
        ),
        child: Column(
          children: [
            Text(label, style: const TextStyle(fontSize: 12, color: Colors.grey)),
            const SizedBox(height: 4),
            Text(value,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}