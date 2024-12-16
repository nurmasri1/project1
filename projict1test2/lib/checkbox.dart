import 'package:flutter/material.dart';

class TaskCheckbox extends StatefulWidget {
  final String text;
  final ValueChanged<bool> onChanged;
  final Color activeColor;

  const TaskCheckbox({
    Key? key,
    required this.text,
    required this.onChanged,
    this.activeColor = Colors.black,
  }) : super(key: key);

  @override
  _TaskCheckboxState createState() => _TaskCheckboxState();
}

class _TaskCheckboxState extends State<TaskCheckbox> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Checkbox(
          value: isChecked,
          activeColor: widget.activeColor,
          onChanged: (bool? value) {
            setState(() {
              isChecked = value!;
            });
            widget.onChanged(isChecked);
          },
        ),
        Text(
          widget.text,
          style: TextStyle(
            fontSize: 20,
            color: isChecked ? Colors.grey : Colors.black,
            decoration: isChecked ? TextDecoration.lineThrough : TextDecoration.none,
          ),
        ),
      ],
    );
  }
}

