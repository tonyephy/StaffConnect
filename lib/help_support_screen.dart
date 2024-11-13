import 'package:flutter/material.dart';

class HelpSupportScreen extends StatelessWidget {
  const HelpSupportScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Help & Support'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Frequently Asked Questions',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            // Example FAQ section
            ExpansionTile(
              title: const Text('How can I reset my password?'),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: const Text(
                    'To reset your password, go to Settings > Account > Reset Password.',
                  ),
                ),
              ],
            ),
            ExpansionTile(
              title: const Text('How do I contact support?'),
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: const Text(
                    'You can reach out to our support team via the Contact Us section below.',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Text(
              'Contact Us',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.phone, color: Colors.deepPurple),
              title: const Text('Phone'),
              subtitle: const Text('+1 (800) 555-0199'),
              onTap: () {
                // Add phone dialer action if needed
              },
            ),
            ListTile(
              leading: const Icon(Icons.email, color: Colors.deepPurple),
              title: const Text('Email'),
              subtitle: const Text('support@teamconnect.com'),
              onTap: () {
                // Add email action if needed
              },
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton.icon(
                icon: const Icon(Icons.feedback_outlined),
                label: const Text('Send Feedback'),
                onPressed: () {
                  // Placeholder for feedback action
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurple, // Replaced 'primary' with 'backgroundColor'
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
