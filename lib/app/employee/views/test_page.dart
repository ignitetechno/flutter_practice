import 'package:flutter/material.dart';
import 'package:flutter_practice/app/employee/controller/employee_controller.dart';
import 'package:get/get.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final employees = List.generate(20, (index) => "Employee ${index + 1}");
    
    final EmployeeController employeeController =
        Get.find<EmployeeController>();

    return Scaffold(
      appBar: AppBar(title: const Text("Employee List")),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                "Welcome",
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),

            ListTile(leading: Icon(Icons.dashboard), title: Text("Dashboard")),

            ListTile(leading: Icon(Icons.people), title: Text("Employees")),

            ListTile(
              leading: Icon(Icons.calendar_month),
              title: Text("Attendance"),
              onTap: () {
                Get.toNamed("/employee");
              },
            ),
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: ListView.builder(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: employees.length,
            itemBuilder: (context, index) {
              return Card(
                margin: EdgeInsets.only(bottom: 10),

                child: ListTile(
                  leading: CircleAvatar(child: Icon(Icons.person)),
                  title: Text(employees[index]),

                  subtitle: Text("Softwere Developer"),

                  trailing: Icon(Icons.arrow_forward_ios),

                  onTap: () => {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(
                          'This is a simple SnackBar notification!',
                        ),
                      ),
                    ),
                  },
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
