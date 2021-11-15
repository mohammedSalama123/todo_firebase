import 'package:flutter/material.dart';
import 'package:todo_triner/screens/home/add_todo.dart';
import 'package:todo_triner/screens/home/todo_list_tab.dart';
import 'package:todo_triner/screens/settings/settings.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = 'HomeScreen';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("To Do List"),
      ),
      floatingActionButton: FloatingActionButton(
        elevation: 0,
        onPressed: () {
          showAddTodoSheet();
        },
        child: const Icon(Icons.add),
        shape: const StadiumBorder(
          side: BorderSide(
            color: Colors.white,
            width: 4,
          )
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        clipBehavior: Clip.antiAlias,
        shape: const CircularNotchedRectangle(),
        notchMargin: 8,
        elevation: 0,
        child: BottomNavigationBar(
          currentIndex: currentIndex,
          onTap: (index){
            currentIndex=index;
            setState(() {

            });
          },
          elevation: 0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.list), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.settings), label: ''),
          ],
        ),
      ),
      body: screens[currentIndex],
    );
  }

  List<Widget> screens=[
    TodoListTab(),
    SettingsTab(),
  ];

  void showAddTodoSheet() {
    showModalBottomSheet(context: context, builder: (context){
      return AddTodoBottomSheet();
    });
  }
}
