import 'package:flutter/material.dart';

class DocumentsScreen extends StatelessWidget {
  const DocumentsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Sample list of documents
    final documents = [
      {'title': 'Employee Handbook', 'description': 'Policies and guidelines'},
      {'title': 'Project Plan', 'description': '2024 Q1 objectives'},
      {'title': 'Safety Procedures', 'description': 'Emergency response guide'},
      {'title': 'Annual Report', 'description': 'Performance overview'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Documents'),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemCount: documents.length,
        itemBuilder: (context, index) {
          final document = documents[index];
          return Card(
            elevation: 3,
            margin: const EdgeInsets.symmetric(vertical: 8.0),
            child: ListTile(
              leading: const Icon(Icons.insert_drive_file, size: 40, color: Colors.deepPurple),
              title: Text(document['title'] ?? 'Untitled Document'),
              subtitle: Text(document['description'] ?? 'No description available'),
              trailing: const Icon(Icons.arrow_forward_ios, size: 16),
              onTap: () {
                // Placeholder for document viewing functionality
              },
            ),
          );
        },
      ),
    );
  }
}
