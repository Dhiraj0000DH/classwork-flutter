import 'package:classworkflutter/model/student.dart';
import 'package:flutter/material.dart';

class StudentView extends StatefulWidget {
  const StudentView({super.key});

  @override
  State<StudentView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<StudentView> {
  final _gap = const SizedBox(
    height: 8,
  );

  final place = [
    const DropdownMenuItem(value: "Kathmandu", child: Text("kathmandu")),
    const DropdownMenuItem(value: "Pokhara", child: Text("Pokhara")),
    const DropdownMenuItem(value: "Chitwan", child: Text("Chitwan")),
    const DropdownMenuItem(value: "Doti", child: Text("Doti")),
  ];

  List<Student> lstStudents = [];

  String? selectedCity;
  // controller
  final _fnameController = TextEditingController();
  final _lnameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List View"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              controller: _fnameController,
              decoration: const InputDecoration(
                labelText: "Enter fname",
                border: OutlineInputBorder(),
              ),
            ),
            _gap,
            TextFormField(
              controller: _lnameController,
              decoration: const InputDecoration(
                labelText: "Enter lname",
                border: OutlineInputBorder(),
              ),
            ),
            _gap,
            DropdownButtonFormField(
              items: place,
              onChanged: (value) {
                setState(() {
                  selectedCity = value;
                });
              },
              decoration: const InputDecoration(
                labelText: "Enter city",
                border: OutlineInputBorder(),
              ),
            ),
            _gap,
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    Student student = Student(
                      fname: _fnameController.text.trim(),
                      lname: _lnameController.text.trim(),
                      city: selectedCity!,
                    );
                    setState(() {
                      lstStudents.add(student);
                    });

                    debugPrint(lstStudents.length.toString());
                  },
                  child: const Text("Add student")),
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: const Text("View student")),
            ),
            // Display student details in listview
            lstStudents.isEmpty
                ? const Text('no data')
                : Expanded(
                    child: ListView.builder(
                      itemCount: lstStudents.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          leading: const Icon(Icons.people),
                          title: Text(
                              '${lstStudents[index].fname} ${lstStudents[index].lname}'),
                          subtitle: Text(lstStudents[index].city),
                          trailing: IconButton(
                              onPressed: () {}, icon: const Icon(Icons.delete)),
                        );
                      },
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
