import 'package:flutter/material.dart';
import 'package:project_x/screen/sign_up.dart';

import 'login_page.dart';

class Subscription extends StatefulWidget {
  const Subscription({super.key});

  @override
  _SubscriptionState createState() => _SubscriptionState();
}

class _SubscriptionState extends State<Subscription> {
  final List<Map<String, dynamic>> options = [
    {'title': 'Real-Time Availability', 'selected': false},
    {'title': 'Accessibility Options', 'selected': false},
    {'title': 'Cleanliness Ratings', 'selected': false},
    {'title': 'Distance-Based Search', 'selected': false},
    {'title': '24/7 Availability', 'selected': false},
    {'title': 'Navigation Assistance', 'selected': false},
    {'title': 'Cashless Access', 'selected': false},
    {'title': 'Favorites and History', 'selected': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        //elevation: 0,
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Progress Indicator
            LinearProgressIndicator(
              value: 0.5,
              color: Colors.blue,
              backgroundColor: Colors.grey.shade300,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Personalise your experience',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    'Choose your interests.',
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              flex: 10,
              child: ListView.builder(
                itemCount: options.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: CheckboxListTile(
                      value: options[index]['selected'],
                      title: Text(options[index]['title']),
                      onChanged: (bool? value) {
                        setState(() {
                          options[index]['selected'] = value!;
                        });
                      },
                      activeColor: Colors.blue,
                      checkColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      tileColor: options[index]['selected']
                          ? Colors.blue.shade50
                          : null,
                      contentPadding: EdgeInsets.symmetric(vertical: 4),
                    ),
                  );
                },
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                color: Colors.white,
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context)
                          .push(MaterialPageRoute(builder: (_) {
                        return LoginScreen();
                      }));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal:
                          150), // Only vertical padding for the button
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      "Next",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ), // Adjust horizontal spacing as needed
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}