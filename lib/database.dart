import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  final CollectionReference taskCollection = FirebaseFirestore.instance.collection('tasks');

  // Add a new task
  Future<void> addTask(Map<String, dynamic> taskData) async {
    await taskCollection.add(taskData);
  }

  // Update task description (subtasks)
  Future<void> updateTaskDesc(String taskId, List<Map<String, dynamic>> updatedDesc) async {
    await taskCollection.doc(taskId).update({'desc': updatedDesc});
  }

  // Fetch all tasks
  Future<List<Map<String, dynamic>>> getTasks() async {
    final snapshot = await taskCollection.get();
    return snapshot.docs.map((doc) {
      return {
        'id': doc.id,
        ...doc.data() as Map<String, dynamic>,
      };
    }).toList();
  }

  // Delete a task
  Future<void> deleteTask(String taskId) async {
    await taskCollection.doc(taskId).delete();
  }
}
