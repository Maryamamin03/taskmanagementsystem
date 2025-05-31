
import 'package:flutter/material.dart';
import 'package:taskms/MenuePage.dart';
import 'package:taskms/constant.dart';
import 'package:taskms/profilepage.dart';
import 'package:taskms/premium.dart';
import 'package:taskms/tasks.dart';
import 'Task_modal.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late List<Task> tasks;
  int activeIndex = 0;

  @override
  void initState() {
    super.initState();
    tasks = Task.generateTasks(); // default data
  }

  void _showAddTaskBottomSheet() {
    final titleController = TextEditingController();
    final leftController = TextEditingController();
    final doneController = TextEditingController();

    IconData selectedIcon = Icons.work;
    Color selectedColor = Colors.blue;

    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
      ),
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom + 20,
          left: 20,
          right: 20,
          top: 20,
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                'Add New Task',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: titleController,
                decoration: const InputDecoration(
                  labelText: 'Task Title',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: leftController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Left Count',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              TextField(
                controller: doneController,
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  labelText: 'Done Count',
                  border: OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Text('Icon:'),
                  const SizedBox(width: 10),
                  DropdownButton<IconData>(
                    value: selectedIcon,
                    items: const [
                      DropdownMenuItem(
                        value: Icons.work,
                        child: Icon(Icons.work),
                      ),
                      DropdownMenuItem(
                        value: Icons.school,
                        child: Icon(Icons.school),
                      ),
                      DropdownMenuItem(
                        value: Icons.fitness_center,
                        child: Icon(Icons.fitness_center),
                      ),
                    ],
                    onChanged: (icon) {
                      setState(() {
                        selectedIcon = icon!;
                      });
                    },
                  ),
                  const SizedBox(width: 30),
                  const Text('Color:'),
                  const SizedBox(width: 10),
                  DropdownButton<Color>(
                    value: selectedColor,
                    items: const [
                      DropdownMenuItem(
                        value: Colors.blue,
                        child: CircleAvatar(backgroundColor: Colors.blue),
                      ),
                      DropdownMenuItem(
                        value: Colors.green,
                        child: CircleAvatar(backgroundColor: Colors.green),
                      ),
                      DropdownMenuItem(
                        value: Colors.purple,
                        child: CircleAvatar(backgroundColor: Colors.purple),
                      ),
                    ],
                    onChanged: (color) {
                      setState(() {
                        selectedColor = color!;
                      });
                    },
                  ),
                ],
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  final title = titleController.text.trim();
                  final left = int.tryParse(leftController.text) ?? 0;
                  final done = int.tryParse(doneController.text) ?? 0;

                  if (title.isEmpty) return;

                  final newTask = Task(
                    title: title,
                    icon: selectedIcon,
                    left: left,
                    done: done,
                    bgcolor: selectedColor.withOpacity(0.2),
                    iconcolor: selectedColor,
                    btncolor: selectedColor,
                    desc: [],
                  );

                  setState(() {
                    tasks.insert(tasks.length, newTask);
                  });

                  Navigator.pop(context);
                },
                child: const Text('Create Task'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> pages = [
      HomePage(
        tasks: tasks,
        onDeleteTask: (task) {
          setState(() {
            tasks.remove(task);
          });
        },
      ),
      const ProfilePage(),
    ];

    return Scaffold(
      appBar: _buildAppbar(context),
      bottomNavigationBar: _buildBottomNavigationBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: _showAddTaskBottomSheet,
        backgroundColor: kDark,
        child: const Icon(Icons.add, color: Colors.white, size: 35),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: pages[activeIndex],
    );
  }

  AppBar _buildAppbar(BuildContext context) {
    return AppBar(
      backgroundColor: kWhite,
      elevation: 0,
      title: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(left: 10, top: 5),
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              color: kLightGrey,
              borderRadius: BorderRadius.circular(10),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: const Image(
                image: AssetImage('images/img2.png'),
              ),
            ),
          ),
          const SizedBox(width: 20),
          Text(
            'Hello, Maryam',
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(
            Icons.more_vert,
            color: Colors.grey.shade600,
            size: 35,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => menuPage()),
            );
          },
        ),
      ],
    );
  }

  Widget _buildBottomNavigationBar() {
    return Container(
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            blurRadius: 10,
            spreadRadius: 5,
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
        child: BottomNavigationBar(
          backgroundColor: kWhite,
          selectedItemColor: Colors.blueAccent,
          unselectedItemColor: Colors.grey.shade400,
          currentIndex: activeIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded, size: 20),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_rounded, size: 20),
              label: 'Profile',
            ),
          ],
          onTap: (index) {
            setState(() {
              activeIndex = index;
            });
          },
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  final List<Task> tasks;
  final Function(Task) onDeleteTask;

  const HomePage({
    super.key,
    required this.tasks,
    required this.onDeleteTask,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.only(left: 8, right: 8, bottom: 10, top: 15),
          child: GoPremium(),
        ),
        Container(
          padding: const EdgeInsets.all(15),
          child: Text(
            'Tasks',
            style: TextStyle(
              color: Colors.grey.shade600,
              fontSize: 26,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
        Expanded(
          child: Tasks(
            tasklist: tasks,
            onDelete: (Task task) => onDeleteTask(task),
          ),
        ),
      ],
    );
  }
}
