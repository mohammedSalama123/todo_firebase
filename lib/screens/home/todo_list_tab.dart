import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:todo_triner/screens/home/todo_item.dart';

class TodoListTab extends StatefulWidget {
  @override
  State<TodoListTab> createState() => _TodoListTabState();
}

class _TodoListTabState extends State<TodoListTab> {
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Container(

      child: Column(
        children: [
          TableCalendar(
            focusedDay: focusedDay,
            firstDay: DateTime.now().subtract(
              const Duration(days: 365),
            ),
            lastDay: DateTime.now().add(
              const Duration(days: 365),
            ),

            selectedDayPredicate: (day) {
              return isSameDay(selectedDay, day);
            },
            calendarFormat: CalendarFormat.week,
            calendarStyle: CalendarStyle(
              selectedTextStyle: TextStyle(color: Colors.white),
              selectedDecoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(8)),
              todayTextStyle: const TextStyle(color: Colors.white),
              todayDecoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(8)),
              defaultTextStyle: const TextStyle(color: Colors.black),
              defaultDecoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            daysOfWeekHeight: 20,
            daysOfWeekStyle: DaysOfWeekStyle(
              decoration:  BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              weekdayStyle: const TextStyle(color: Colors.black),

            ),

            weekendDays: [],
            onDaySelected: (_selectedDay, _focusedDay) {
              selectedDay = _selectedDay;
              focusedDay = _focusedDay;
              setState(() {});
            },
          ),
          Expanded(child: ListView.builder(itemBuilder: (context,index){
            return TodoItem();
          },
            itemCount: 20,
          ),)
        ],
      ),
    );
  }
}
