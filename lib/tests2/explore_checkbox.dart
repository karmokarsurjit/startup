import 'package:flutter/material.dart';

class ExplorePlanets extends StatelessWidget {
  const ExplorePlanets({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Space Exploration Planner!"),
      ),
      body: Column(
        children: [
          Progress(),
          TaskList(),
        ],
      ),
    );
  }
}
class Progress extends StatelessWidget {
  const Progress({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("You are this far away from exploring the whole universe"),
        LinearProgressIndicator(value:  0.0,),
      ],
    );
  }
}
class TaskList extends StatelessWidget {
  const TaskList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TaskItem(label: "Load Rocket with Supplies"),
        TaskItem(label: "Launch Rocket"),
        TaskItem(label: "Circle the home planet"),
        TaskItem(label: "Head out to the first moon"),
        TaskItem(label: "Launch moon lander #1"),
      ],
    );
  }
}

class TaskItem extends StatefulWidget {
  final String label;

  TaskItem({Key? key, required this.label}) : super(key: key);

  @override
  State<TaskItem> createState() => _TaskItemState();
}

class _TaskItemState extends State<TaskItem> {
  bool? _value = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(value: _value, onChanged: (newValue) => setState(() => _value=newValue)),
        Text(widget.label),
      ],
    );
  }
}



