import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      // width: 250,
      // decoration: const BoxDecoration(
      //   color: Colors.transparent,
      // ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 10),
          const SidebarItem(emoji: "🏠", label: "Home"),
          const SidebarItem(emoji: "🔍", label: "Explore"),
          const SidebarItem(emoji: "🎨", label: "Featured"),
          const SidebarItem(emoji: "🏆", label: "Trending"),
          const SidebarItem(emoji: "🌟", label: "New Arrivals"),
          const SidebarItem(emoji: "🖼️", label: "Exhibitions"),
        ],
      ),
    );
  }
}
// import 'package:flutter/material.dart';

class SidebarItem extends StatelessWidget {
  final String emoji;
  final String label;

  const SidebarItem({super.key, required this.emoji, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12.0),
      child: ListTile(
        title: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: emoji,
                    style: const TextStyle(
                      fontSize: 28,
                      // fontFamily: 'NotoColorEmoji', // Ensures full-color emojis
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 4),
            Text(
              label,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ],
        ),
        onTap: () {},
      ),
    );
  }
}

class HeaderActions extends StatelessWidget {
  const HeaderActions({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end, // Align to the right
      children: [
        Text(
          "LOGO",
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(width: 100),
        _buildOutlinedButton(Icons.call, "Talk to Expert"),
        const SizedBox(width: 10),
        _buildOutlinedButton(Icons.person, "User"),
        const SizedBox(width: 10),
        _buildNotificationIcon(),
      ],
    );
  }

  // Outlined Button Template
  Widget _buildOutlinedButton(IconData icon, String label) {
    return OutlinedButton.icon(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Colors.white54),
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      icon: Icon(icon, size: 18),
      label: Text(
        label,
        style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ),
    );
  }

  // Notification Bell with Red Dot
  Widget _buildNotificationIcon() {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: const BorderSide(color: Colors.white54),
            padding: const EdgeInsets.all(12),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          child: const Icon(Icons.notifications, color: Colors.white, size: 22),
        ),
        Positioned(
          right: 8,
          top: 8,
          child: Container(
            width: 10,
            height: 10,
            decoration: BoxDecoration(
              color: Colors.red,
              shape: BoxShape.circle,
              border: Border.all(color: Colors.white, width: 2),
            ),
          ),
        ),
      ],
    );
  }
}
