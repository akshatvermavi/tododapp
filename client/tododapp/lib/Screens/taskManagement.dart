import 'package:flutter/material.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Task Management')),
      body: Column(
        children: [
          Expanded(child: TaskList()),
          TaskInputField(),
        ],
      ),
    );
  }
}

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Replace with dynamic task count
      itemBuilder: (context, index) {
        return ListTile(
          title: Text('Task $index'),
          trailing: IconButton(
            icon: Icon(Icons.check),
            onPressed: () {
              // Mark task as completed
            },
          ),
        );
      },
    );
  }
}

class TaskInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        decoration: InputDecoration(
          labelText: 'Add a task',
          border: OutlineInputBorder(),
        ),
        onSubmitted: (value) {
          // Handle task addition
        },
      ),
    );
  }
}