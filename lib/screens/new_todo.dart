import 'package:flutter/material.dart';
import 'dart:io';

import 'package:flutter/widgets.dart';

class NewTodo extends StatefulWidget {
  const NewTodo({super.key});
  @override
  State<NewTodo> createState() => _NewTodoState();
}

class _NewTodoState extends State<NewTodo> {
  String title = "";
  String description = "";
  DateTime selectedDate = DateTime.now();
  bool isComplete = false;

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text('New Todo'),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              //crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Title',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.start,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.grey[100]),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade100),
                    ),
                    fillColor: Colors.grey.shade200,
                    hintText: 'Enter title here',
                    hintStyle: const TextStyle(fontWeight: FontWeight.normal),
                    filled: true,
                    //labelText: 'Title',
                  ),
                  enableSuggestions: false,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a title';
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    title = newValue!;
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Description',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.start,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelStyle: TextStyle(color: Colors.grey[100]),
                    enabledBorder: const OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.white),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade100),
                    ),
                    fillColor: Colors.grey.shade200,
                    hintText: 'Enter Description here',
                    hintStyle: const TextStyle(fontWeight: FontWeight.normal),
                    filled: true,
                    //labelText: 'Title',
                  ),
                  enableSuggestions: false,
                  //maxLines: 3,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a description';
                    }
                    return null;
                  },
                  onSaved: (newValue) {
                    description = newValue!;
                  },
                ),
                Row(
                  children: [
                    TextButton.icon(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                            const Color.fromARGB(224, 39, 4, 196)),
                      ),
                      onPressed: () => _selectDate(context),
                      icon: Icon(
                        Icons.calendar_month,
                        color: Colors.white,
                      ),
                      label: Text(
                        '${selectedDate.toIso8601String().split('T')[0]}',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    const SizedBox(
                      width: 50,
                    ),
                    const Text('Select Date:'),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                /* Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: true,
                          groupValue: isComplete,
                          onChanged: (value) {
                            setState(() {
                              isComplete = value as bool;
                            });
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('Complete'),
                      ],
                    ),
                    Row(
                      children: [
                        Radio(
                          value: true,
                          groupValue: isComplete,
                          onChanged: (value) {
                            setState(() {
                              isComplete = value as bool;
                            });
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('Incomplete'),
                      ],
                    ),
                  ],
                ),
                */

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Radio(
                          value: true,
                          groupValue: isComplete,
                          onChanged: (value) {
                            setState(() {
                              isComplete = value as bool;
                            });
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('Incomplete'),
                      ],
                    ),
                    //const Text('Complete'),
                    const SizedBox(width: 10),
                    Row(
                      children: [
                        Radio(
                          value: false,
                          groupValue: isComplete,
                          onChanged: (value) {
                            setState(() {
                              isComplete = value as bool;
                            });
                          },
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        const Text('Complete'),
                      ],
                    ),
                    //const Text('Incomplete'),
                  ],
                ),
                const SizedBox(
                  height: 100,
                ),
                ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                      const Color.fromARGB(224, 39, 4, 196),
                    ),
                  ),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Add logic to save todo data
                      print(
                          'Todo: $title, $description, $selectedDate, $isComplete');
                    }
                  },
                  child: const Text(
                    'Add',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(
                  height: 50,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2020, 1, 1),
      lastDate: DateTime(2100),
    );
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }
}
