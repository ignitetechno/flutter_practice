import 'package:flutter/material.dart';

class TestPage extends StatelessWidget {
  const TestPage({super.key});

  @override
  Widget build(BuildContext context) {
    final employees = List.generate(20, (index) => "Employee ${index + 1}");

    return Scaffold(
      appBar: AppBar(title: const Text("Employee List")),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: ListView.builder(
          itemCount: employees.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.only(bottom: 10),

              child: ListTile(
                leading: CircleAvatar(child: Icon(Icons.person)),
                title: Text(employees[index]),

                subtitle: Text("Softwere Developer"),

                trailing: Icon(Icons.arrow_forward_ios),

                onTap: () => {print(employees[index])},
              ),
            );
          },
        ),
      ),
    );
  }
}
