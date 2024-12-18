import 'package:flutter/material.dart';

class TimeDateView extends StatefulWidget {
  const TimeDateView({super.key});

  @override
  TimeDateViewState createState() => TimeDateViewState();
}

class TimeDateViewState extends State<TimeDateView> {
  TimeOfDay? time = TimeOfDay.now();
  DateTime? date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Time & Date')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Row for Time and Change Time button (aligned to left and right)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20), // Padding on the left
                child: Text(
                  'Time: ${time!.hour}:${time!.minute}',
                  style: const TextStyle(fontSize: 16), // Smaller font size
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(right: 20), // Padding on the right
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: const Color.fromRGBO(33, 150, 243,
                        1), // Set text color inside the button to white
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Rounded corners
                    ),
                  ),
                  onPressed: () async {
                    TimeOfDay? newTime = await showTimePicker(
                      context: context,
                      initialTime: time!,
                    );
                    if (newTime != null) {
                      setState(() {
                        time = newTime;
                      });
                    }
                  },
                  child: const Text('Change Time'),
                ),
              ),
            ],
          ),
          const SizedBox(height: 20), // Spacer for separation
          // Row for Date and Change Date button (aligned to left and right)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20), // Padding on the left
                child: Text(
                  'Date: ${date!.day}/${date!.month}/${date!.year}',
                  style: const TextStyle(fontSize: 16), // Smaller font size
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(right: 20), // Padding on the right
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors
                        .blue, // Set text color inside the button to white
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(10), // Rounded corners
                    ),
                  ),
                  onPressed: () async {
                    DateTime? newDate = await showDatePicker(
                      context: context,
                      initialDate: date!,
                      firstDate: DateTime(2000),
                      lastDate: DateTime(2050),
                    );
                    if (newDate != null) {
                      setState(() {
                        date = newDate;
                      });
                    }
                  },
                  child: const Text('Change Date'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
