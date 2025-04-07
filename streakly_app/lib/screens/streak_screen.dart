import 'package:flutter/material.dart';
import 'package:streakly_app/widgets/standard_card.dart';

class StreakScreen extends StatelessWidget {
  const StreakScreen({Key? key}) : super(key: key);

  void _showAddStreakConfirmation(BuildContext context) {
    showDialog(
      context: context,
      barrierColor: Colors.black.withOpacity(0.5),
      builder: (context) => Dialog(
        backgroundColor: const Color(0xFF1E1E1E),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              Icon(Icons.check_circle_outline, color: Colors.white70, size: 40),
              SizedBox(height: 12),
              Text("Great Job!",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
              SizedBox(height: 8),
              Text("You've added your streak successfully! Keep it up.",
                  style: TextStyle(fontSize: 14, color: Colors.white60), textAlign: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }

  void _showFriendProgressPopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Friends' Progress"),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _buildFriendProgress("Alice", 0.9),
            _buildFriendProgress("Bob", 0.7),
            _buildFriendProgress("Charlie", 0.4),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text("Close"),
          )
        ],
      ),
    );
  }

  Widget _buildFriendProgress(String name, double progress) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        children: [
          CircleAvatar(child: Text(name[0])),
          const SizedBox(width: 10),
          Expanded(child: Text(name)),
          SizedBox(
            width: 100,
            child: LinearProgressIndicator(
              value: progress,
              backgroundColor: Colors.grey.shade300,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.orange.shade400),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final double friendProgress = 0.65;
    final double userProgress = 0.85;
    final List<String> weekActivity = ['🔥', '🔥', '🔥', '❄️', '❌', '🔥', '🔥'];
    final List<String> dayLetters = ['M', 'T', 'W', 'T', 'F', 'S', 'S'];
    final List<Color> backgrounds = [
      Colors.orange.shade100,
      Colors.orange.shade200,
      Colors.orange.shade100,
      Colors.blue.shade100,
      Colors.red.shade100,
      Colors.orange.shade200,
      Colors.orange.shade300,
    ];

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF2D3142)),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text("Streak Details"),
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(color: Color(0xFF2D3142)),
        titleTextStyle: const TextStyle(color: Color(0xFF2D3142), fontSize: 20),
      ),
      backgroundColor: const Color(0xFFFAFAFA),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            StandardCard(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.local_fire_department, color: Colors.orange, size: 26),
                      SizedBox(width: 8),
                      Text("Your Streak",
                          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 6),
                  const Text("Still going strong! Keep up the momentum.",
                      style: TextStyle(fontSize: 14, color: Color(0xFF7D8597))),
                  const SizedBox(height: 16),
                  const Text("Your Progress",
                      style: TextStyle(fontWeight: FontWeight.w600)),
                  const SizedBox(height: 6),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: LinearProgressIndicator(
                      value: userProgress,
                      backgroundColor: Colors.grey.shade200,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blueAccent),
                      minHeight: 8,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () => _showFriendProgressPopup(context),
                        child: const Row(
                          children: const [
                            CircleAvatar(radius: 12, backgroundImage: AssetImage('assets/user1.png')),
                            SizedBox(width: 6),
                            CircleAvatar(radius: 12, backgroundImage: AssetImage('assets/user2.png')),
                            SizedBox(width: 6),
                            CircleAvatar(radius: 12, backgroundImage: AssetImage('assets/user3.png')),
                            SizedBox(width: 8),
                            Text("Friends' Progress", style: TextStyle(fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ),
                      Text("${(friendProgress * 100).toInt()}%",
                          style: const TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
                    ],
                  ),
                  const SizedBox(height: 6),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(4),
                    child: LinearProgressIndicator(
                      value: friendProgress,
                      backgroundColor: Colors.grey.shade200,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.orange.shade400),
                      minHeight: 8,
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 24),

            Center(
              child: GestureDetector(
                onTap: () => _showAddStreakConfirmation(context),
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(14),
                    boxShadow: [
                      const BoxShadow(color: Colors.orange, blurRadius: 6, offset: const Offset(0, 3)),
                    ],
                  ),
                  child: const Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.add, color: Colors.white),
                      SizedBox(width: 8),
                      Text("Add Streak",
                          style: TextStyle(fontSize: 16, color: Colors.white, fontWeight: FontWeight.w600)),
                    ],
                  ),
                ),
              ),
            ),

            const SizedBox(height: 32),
            const Text("This Week",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2D3142))),
            const SizedBox(height: 8),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: List.generate(weekActivity.length, (index) {
                  return Column(
                    children: [
                      Text(
                        dayLetters[index],
                        style: const TextStyle(fontWeight: FontWeight.bold, color: Color(0xFF2D3142)),
                      ),
                      const SizedBox(height: 6),
                      Container(
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        padding: const EdgeInsets.all(14),
                        decoration: BoxDecoration(
                          color: backgrounds[index],
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Text(weekActivity[index], style: const TextStyle(fontSize: 20)),
                      ),
                    ],
                  );
                }),
              ),
            ),

            const SizedBox(height: 32),
            const Text("Weekly Bar Chart",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFF2D3142))),
            const SizedBox(height: 8),
            StandardCard(
              child: SizedBox(
                height: 100,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: List.generate(7, (index) {
                    final heights = [60.0, 80.0, 50.0, 20.0, 10.0, 70.0, 90.0];
                    return Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 4),
                        child: Container(
                          height: heights[index],
                          decoration: BoxDecoration(
                            color: Colors.orange,
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

