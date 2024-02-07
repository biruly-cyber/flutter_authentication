import 'package:flutter/material.dart';

class AddEmployeePage extends StatefulWidget {
  const AddEmployeePage({super.key});

  @override
  State<AddEmployeePage> createState() => _AddEmployeePageState();
}

class _AddEmployeePageState extends State<AddEmployeePage> {
  final _formKey = GlobalKey<FormState>();

  //declare the variable to store the data
  String employeeId = "";
  String employeeName = "";
  String gender = "";
  String employeeEmail = "";
  String password = "";
  String employeePhoneNumber = "";
  String dateOfBirth = "";
  String address = "";
  String postOffice = "";
  String policeStation = "";
  String city = "";
  String state = "";
  String pinNumber = "";
  String designation = "";
  String designationType = "";
  String department = "";

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Material(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  labelText: "Name", // Use 'labelText' instead of 'label'
                ),
                onChanged: (value) {
                  setState(() {
                    employeeName = value;
                  });
                },
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    print(employeeName);
                    //validate the form and save the data
                    if (_formKey.currentState!.validate()) {}
                  },
                  child: const Text('Submit'))
            ],
          ),
        ),
      ),
    ));
  }
}
