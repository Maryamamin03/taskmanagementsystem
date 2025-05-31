
import 'package:flutter/material.dart';
import 'Task_modal.dart';
import 'TaskTimeline.dart';
import 'datePicker.dart';
import 'task_title.dart';

class DetailPage extends StatefulWidget {
  final Task task;
  const DetailPage(this.task, {super.key});

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  late List<Map<String, dynamic>> detailList;

  @override
  void initState() {
    super.initState();
    detailList = List<Map<String, dynamic>>.from(widget.task.desc ?? []);
  }

  void _showAddTaskDialog() {
    final titleController = TextEditingController();
    final timeController = TextEditingController();
    final slotController = TextEditingController();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Add New Task'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: titleController,
                decoration: const InputDecoration(labelText: 'Title'),
              ),
              TextField(
                controller: timeController,
                decoration: const InputDecoration(labelText: 'Time (e.g., 3.00 PM)'),
              ),
              TextField(
                controller: slotController,
                decoration: const InputDecoration(labelText: 'Slot (e.g., 3:00 PM - 4:00 PM)'),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text('Cancel'),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  detailList.add({
                    'title': titleController.text,
                    'time': timeController.text,
                    'slot': slotController.text,
                    't1color': Colors.blue,
                    'bgcolor': Colors.blue.shade100,
                  });
                });
                Navigator.of(context).pop();
              },
              child: const Text('Add'),
            ),
          ],
        );
      },
    );
  }

  void _confirmDeleteTask(int index) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Delete Task'),
        content: const Text('Are you sure you want to delete this task?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(context).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              setState(() {
                detailList.removeAt(index);
              });
              Navigator.of(context).pop();
            },
            child: const Text('Delete'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddTaskDialog,
        child: const Icon(Icons.add),
      ),
      body: CustomScrollView(
        slivers: [
          _buildAppBar(context),
          SliverToBoxAdapter(
            child: Container(
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Datepicker(),
                  TaskTitle(
                    title: widget.task.title ?? '', // ✅ fixed null issue
                    taskCount: detailList.length,
                  ),
                ],
              ),
            ),
          ),
          if (detailList.isEmpty)
            SliverToBoxAdapter(
              child: Container(
                height: 100,
                alignment: Alignment.center,
                child: const Text(
                  'No Tasks yet',
                  style: TextStyle(fontSize: 20, color: Color(0xFF8B8B8B)),
                ),
              ),
            )
          else
            SliverList(
              delegate: SliverChildBuilderDelegate(
                    (context, index) => GestureDetector(
                  onLongPress: () => _confirmDeleteTask(index),
                  child: Tasktimeline(detailList[index]),
                ),
                childCount: detailList.length,
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildAppBar(BuildContext context) {
    return SliverAppBar(
      backgroundColor: Colors.black,
      expandedHeight: 90,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back_ios),
        onPressed: () => Navigator.pop(context),
        iconSize: 20,
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.more_vert),
          onPressed: () {},
          iconSize: 20,
        ),
      ],
      flexibleSpace: FlexibleSpaceBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              '${widget.task.title ?? ''} Task', // ✅ null-safe
              style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 5),
            Text(
              'You have ${detailList.length} tasks left to do',
              style: const TextStyle(
                fontSize: 12,
                color: Colors.grey,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
