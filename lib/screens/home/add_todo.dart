import 'package:flutter/material.dart';

class AddTodoBottomSheet extends StatefulWidget {
  @override
  State<AddTodoBottomSheet> createState() => _AddTodoBottomSheetState();
}

class _AddTodoBottomSheetState extends State<AddTodoBottomSheet> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'add Todo',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
          TextFormField(
            decoration: InputDecoration(
              hintText: 'enter your task',
            ),
          ),
          TextFormField(
            minLines: 4,
            maxLines: 4,
            decoration: InputDecoration(
              hintText: 'enter your task',
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Date',
              textAlign: TextAlign.center,
            ),
          ),
          InkWell(
            onTap: () {
              showDateDialoge();
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                '1-12-2021',
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: Text('add'),
          ),
        ],
      ),
    );
  }

  void showDateDialoge() {
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime.now().add(
        Duration(days: 365),
      ),
    );
  }
}
