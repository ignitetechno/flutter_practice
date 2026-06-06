import 'package:flutter_practice/app/employee/model/emp_model.dart';
import 'package:get/get.dart';

class EmployeeController extends GetxController {

  var isLoading = false.obs;

  // Single Selected Employee
  var selectedEmployee = Employee(
    id: 0,
    name: '',
    designation: '',
  ).obs;

  // Employee List
  var employeeList = <Employee>[].obs;

  // Search Result List
  var filteredList = <Employee>[].obs;

  @override
  void onInit() {
    super.onInit();
    loadEmployees();
  }

  Future<void> loadEmployees() async {

    isLoading.value = true;

    await Future.delayed(
      const Duration(seconds: 2),
    );

    employeeList.assignAll([
      Employee(
        id: 1,
        name: "Rahim",
        designation: "Manager",
      ),
      Employee(
        id: 2,
        name: "Karim",
        designation: "Developer",
      ),
      Employee(
        id: 3,
        name: "Sakib",
        designation: "Accountant",
      ),
      Employee(
        id: 4,
        name: "Tamim",
        designation: "HR Officer",
      ),
    ]);

    filteredList.assignAll(employeeList);

    isLoading.value = false;
  }

  void selectEmployee(Employee employee) {
    selectedEmployee.value = employee;
  }

  void search(String keyword) {

    if (keyword.isEmpty) {
      filteredList.assignAll(employeeList);
      return;
    }

    filteredList.assignAll(
      employeeList.where(
        (e) => e.name.toLowerCase().contains(
          keyword.toLowerCase(),
        ),
      ),
    );
  }
}