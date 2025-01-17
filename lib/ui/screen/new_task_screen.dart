import 'package:flutter/material.dart';
import 'package:task_manage_1_project/ui/screen/add_new_task_screen.dart';
import 'package:task_manage_1_project/ui/utility/app_colors.dart';
import '../widget/task_item.dart';
import '../widget/task_summary_card.dart';

class NewTaskScreen extends StatefulWidget {
  const NewTaskScreen({super.key});

  @override
  State<NewTaskScreen> createState() => _NewTaskScreenState();
}

class _NewTaskScreenState extends State<NewTaskScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 8,left: 8,right: 8),
        child: Column(
          children: [
            _buildSummarySection(),
            const SizedBox(height: 8,),
            Expanded(
              child: ListView.builder(
                itemCount: 7,
                itemBuilder: (context, index) {
                  return const TaskItem();
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _onTapAddButton,
        foregroundColor: Colors.white,
        backgroundColor: AppColors.themeColor,
      ),
    );
  }

  void _onTapAddButton(){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => AddNewTaskScreen(),
      ),
    );
  }

  Widget _buildSummarySection() {
    return const SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          TaskSummaryCard(
            title: 'New Task',
            count: '34',
          ),
          TaskSummaryCard(
            title: 'Completed',
            count: '34',
          ),
          TaskSummaryCard(
            title: 'In Pogress',
            count: '34',
          ),
          TaskSummaryCard(
            title: 'Canceled',
            count: '34',
          ),
        ],
      ),
    );
  }
}

