// import 'package:bonus/detail.dart';
// import 'package:dotted_border/dotted_border.dart';
// import 'package:flutter/material.dart';
// import 'package:bonus/Task_modal.dart';
// import 'package:bonus/constant.dart';
//
// class Tasks extends StatelessWidget {
//   // final tasklist = Task.generateTasks();
//   //  Tasks({super.key});
//   final List<Task> tasklist;
//   const Tasks({super.key, required this.tasklist});
//
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 15),
//       child: GridView.builder
//         (itemCount: tasklist.length,
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 10,
//           crossAxisSpacing: 10),
//         itemBuilder:(context,index) => tasklist[index].isLast !? _buildAddTask() : _buildTask(context, tasklist[index]),)
//     );
//   }
// }
//
// Widget _buildAddTask(){
//   return DottedBorder(borderType: BorderType.RRect,
//     radius: const Radius.circular(10),
//     color: Colors.grey.shade600,
//     strokeWidth: 2,dashPattern: [10,10],child: Center(child: Icon(Icons.add,size: 30,color: Colors.grey.shade600,)),);
// }
// Widget _buildTask(BuildContext context,Task tasklist ) {
//   return GestureDetector(
//     onTap:(){
//       Navigator.push(
//         context,MaterialPageRoute(builder: (context)=> DetailPage(tasklist))
//       );
//     },
//     child: Container(
//       padding: const EdgeInsets.all(15),
//       decoration: BoxDecoration(color: tasklist.bgcolor,
//     borderRadius: BorderRadius.circular(10)),
//     child: Column(crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//     Icon(tasklist.icon,
//     color: tasklist.iconcolor,
//     size: 30,),
//     SizedBox(height: 30,),
//       Text(
//         tasklist.title.toString(),
//         style:TextStyle(
//           color: Colors.grey[600],
//           fontSize: 10,
//           fontWeight: FontWeight.w500,
//
//         ) ,
//       ),
//       SizedBox(height: 10),
//     Row(
//       children: [
//         Expanded(
//           child: _buildTaskStatus(
//             Colors.white54,
//             tasklist.iconcolor!,
//             '${tasklist.left} left',
//           ),
//         ),
//         const SizedBox(width: 2),
//         Expanded(
//           child: _buildTaskStatus(
//             kWhite,
//             tasklist.iconcolor!,
//             '${tasklist.done} done',
//           ),
//         ),
//       ],
//     ),
//
//       ]
//     )
//     ),
//   );
// }
// Widget _buildTaskStatus(Color bgcolor,Color txtColor,String txt){
//   return Container(padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//     decoration: BoxDecoration(
//       color: bgcolor,
//       borderRadius: BorderRadius.circular(15),
//     ), // BoxDecoration
//     child: Text(
//       txt,
//       style: TextStyle(
//         color: txtColor,
//         fontSize: 10,
//         // fontWeight: FontWeight.w500,
//       ), // TextStyle
//     ), // Text
//   );
//
// }
import 'package:taskms/detail.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:taskms/Task_modal.dart';
import 'package:taskms/constant.dart';

class Tasks extends StatelessWidget {
  final List<Task> tasklist;
  final void Function(Task) onDelete;

  const Tasks({super.key, required this.tasklist, required this.onDelete});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: GridView.builder(
        itemCount: tasklist.length,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
        ),
        itemBuilder: (context, index) =>
        tasklist[index].isLast == true
            ? _buildAddTask()
            : _buildTask(context, tasklist[index]),// 👈 FIXED: onDelete now inside _buildTask
      ),
    );
  }

  Widget _buildAddTask() {
    return DottedBorder(
      borderType: BorderType.RRect,
      radius: const Radius.circular(10),
      color: Colors.grey.shade600,
      strokeWidth: 2,
      dashPattern: const [10, 10],
      child: Center(
        child: Icon(Icons.add, size: 30, color: Colors.grey.shade600),
      ),
    );
  }

  // ✅ You now use onDelete from the class field (no need to pass it as a param)
  Widget _buildTask(BuildContext context, Task task) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => DetailPage(task)),
        );
      },
      child: Container(
        padding: const EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: task.bgcolor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(task.icon, color: task.iconcolor, size: 30),
                const Spacer(),
                GestureDetector(
                  onTap: () => onDelete(task),
                  child: const Icon(Icons.delete_outline, color: Colors.redAccent, size: 20),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Text(
              task.title.toString(),
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 10,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: _buildTaskStatus(
                    Colors.white54,
                    task.iconcolor!,
                    '${task.left} left',
                  ),
                ),
                const SizedBox(width: 2),
                Expanded(
                  child: _buildTaskStatus(
                    kWhite,
                    task.iconcolor!,
                    '${task.done} done',
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildTaskStatus(Color bgcolor, Color txtColor, String txt) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      decoration: BoxDecoration(
        color: bgcolor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        txt,
        style: TextStyle(
          color: txtColor,
          fontSize: 10,
        ),
      ),
    );
  }
}
