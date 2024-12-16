import 'package:flutter/material.dart';
import 'checkbox.dart';
import 'info.dart';

class index extends StatefulWidget {
  const index({super.key});

  @override
  State<index> createState() => _indexState();
}

class _indexState extends State<index> {

  bool isChecked = false;

  final Map<String, double> expenses = {
    "Wedding Hall": 0,
    "Photography": 0,
    "Decoration": 0,
    "Food": 0,
  };
  double totalBudget = 0;

  void calculateTotalBudget() {
    setState(() {
      totalBudget = expenses.values.reduce((a, b) => a + b);
    });
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    Information information = ModalRoute.of(context)!.settings.arguments as Information;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                ClipRRect(
                  child: Image.asset(
                    'images/wedding.webp',
                    width: screenWidth,
                    height: screenHeight * 0.3,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: screenWidth,
                  height: screenHeight * 0.3,
                  color: Colors.black.withOpacity(0.2),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30.0, left: 17.0, right: 40.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 20,
                              offset: Offset(0, 10),
                            ),
                          ],
                        ),
                        child: Image.asset(
                          'images/envato.png',
                          fit: BoxFit.contain,
                          width: 45,
                          height: 45,
                        ),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 50.0),
                    child: Text(
                      information.name.isNotEmpty && information.name2.isNotEmpty
                          ? '${information.name} & ${information.name2}'
                          : 'Welcome!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 27,
                        fontWeight: FontWeight.bold,
                        shadows: [
                          Shadow(
                            color: Colors.black.withOpacity(0.5),
                            offset: Offset(1, 2),
                            blurRadius: 4,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(6.0),
              child: Container(
                width: screenWidth,
                color: Color(0xFFD58E8E),
                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Container(
                    width: screenWidth,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Text(
                          'Wedding Planning',
                          style: TextStyle(
                            color: Color(0xFFD58E8E),
                            fontSize: 30,
                            shadows: [
                              Shadow(
                                color: Colors.black.withOpacity(0.2),
                                offset: Offset(1, 2),
                                blurRadius: 4,
                              ),
                            ],
                          ),
                        ),
                        Text(
                          'CheckList',
                          style: TextStyle(
                            color: Color(0xFFD58E8E),
                            fontSize: 24,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10.0, left: 10.0, bottom: 5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Color(0xFFF9CCCC),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(top: 12.0, left: 15.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    '12 - 10 Months',
                                    style: TextStyle(
                                      color: Color(0xFF323030),
                                      fontSize: 20,
                                    ),
                                  ),
                                  TaskCheckbox(
                                    text: 'Book Photographer',
                                    onChanged: (bool value) {
                                      print('Task 1 is ${value ? "completed" : "not completed"}');
                                    },
                                  ),
                                  TaskCheckbox(
                                    text: 'Book Videographer',
                                    onChanged: (bool value) {
                                      print('Task 2 is ${value ? "completed" : "not completed"}');
                                    },
                                  ),
                                  TaskCheckbox(
                                    text: 'Meet with caterers',
                                    onChanged: (bool value) {
                                      print('Task 3 is ${value ? "completed" : "not completed"}');
                                    },
                                  ),
                                  Text(
                                    '9 - 6 Months',
                                    style: TextStyle(
                                      color: Color(0xFF323030),
                                      fontSize: 20,
                                    ),
                                  ),
                                  TaskCheckbox(
                                    text: 'Reserve hair & makeup',
                                    onChanged: (bool value) {
                                      print('Task 4 is ${value ? "completed" : "not completed"}');
                                    },
                                  ),
                                  TaskCheckbox(
                                    text: 'Book a florist',
                                    onChanged: (bool value) {
                                      print('Task 5 is ${value ? "completed" : "not completed"}');
                                    },
                                  ),
                                  TaskCheckbox(
                                    text: 'Purchase a wedding dress',
                                    onChanged: (bool value) {
                                      print('Task 6 is ${value ? "completed" : "not completed"}');
                                    },
                                  ),
                                  TaskCheckbox(
                                    text: 'Pick a cake',
                                    onChanged: (bool value) {
                                      print('Task 7 is ${value ? "completed" : "not completed"}');
                                    },
                                  ),
                                  TaskCheckbox(
                                    text: 'Menu tasting with catering',
                                    onChanged: (bool value) {
                                      print('Task 8 is ${value ? "completed" : "not completed"}');
                                    },
                                  ),
                                  TaskCheckbox(
                                    text: 'Reserve hotel blocks',
                                    onChanged: (bool value) {
                                      print('Task 9 is ${value ? "completed" : "not completed"}');
                                    },
                                  ),
                                  TaskCheckbox(
                                    text: 'Arrange for transportation',
                                    onChanged: (bool value) {
                                      print('Task 10 is ${value ? "completed" : "not completed"}');
                                    },
                                  ),
                                  Text(
                                    '5 - 2 Months',
                                    style: TextStyle(
                                      color: Color(0xFF323030),
                                      fontSize: 20,
                                    ),
                                  ),
                                  TaskCheckbox(
                                    text: 'Send wedding invitations',
                                    onChanged: (bool value) {
                                      print('Task 11 is ${value ? "completed" : "not completed"}');
                                    },
                                  ),
                                  TaskCheckbox(
                                    text: 'Send wedding invitations',
                                    onChanged: (bool value) {
                                      print('Task 12 is ${value ? "completed" : "not completed"}');
                                    },
                                  ),
                                  TaskCheckbox(
                                    text: 'Have a hair and makeup trial',
                                    onChanged: (bool value) {
                                      print('Task 13 is ${value ? "completed" : "not completed"}');
                                    },
                                  ),
                                  TaskCheckbox(
                                    text: 'Finalize the ceremony',
                                    onChanged: (bool value) {
                                      print('Task 14 is ${value ? "completed" : "not completed"}');
                                    },
                                  ),
                                  TaskCheckbox(
                                    text: 'Purchase wedding rings',
                                    onChanged: (bool value) {
                                      print('Task 15 is ${value ? "completed" : "not completed"}');
                                    },
                                  ),
                                  TaskCheckbox(
                                    text: 'Touch base with all vendors',
                                    onChanged: (bool value) {
                                      print('Task 16 is ${value ? "completed" : "not completed"}');
                                    },
                                  ),
                                  TaskCheckbox(
                                    text: 'Book the honeymoon',
                                    onChanged: (bool value) {
                                      print('Task 17 is ${value ? "completed" : "not completed"}');
                                    },
                                  ),
                                  Text(
                                    '1 - 0 Months',
                                    style: TextStyle(
                                      color: Color(0xFF323030),
                                      fontSize: 20,
                                    ),
                                  ),
                                  TaskCheckbox(
                                    text: 'Mail rehearsal dinner invites',
                                    onChanged: (bool value) {
                                      print('Task 19 is ${value ? "completed" : "not completed"}');
                                    },
                                  ),
                                  TaskCheckbox(
                                    text: 'Arrange for a final fitting',
                                    onChanged: (bool value) {
                                      print('Task 20 is ${value ? "completed" : "not completed"}');
                                    },
                                  ),
                                  TaskCheckbox(
                                    text: 'Send out all final payments',
                                    onChanged: (bool value) {
                                      print('Task 21 is ${value ? "completed" : "not completed"}');
                                    },
                                  ),
                                  TaskCheckbox(
                                    text: 'Assemble Welcome bags\n to guest rooms',
                                    onChanged: (bool value) {
                                      print('Task 22 is ${value ? "completed" : "not completed"}');
                                    },
                                  ),
                                  TaskCheckbox(
                                    text: 'Rehearse & say "I DO"!',
                                    onChanged: (bool value) {
                                      print('Task 23 is ${value ? "completed" : "not completed"}');
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Text(
                          "Pudget Calculator",
                          style: TextStyle(
                              fontSize: 22, fontWeight: FontWeight.bold,color: Color(0xFFD58E8E)
                          ),
                        ),
                        ...expenses.keys.map((key) {
                          return Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: TextField(
                              decoration: InputDecoration(
                                labelText: "$key",
                                border: OutlineInputBorder(),
                              ),
                              keyboardType: TextInputType.number,
                              onChanged: (value) {
                                setState(() {
                                  expenses[key] = double.tryParse(value) ?? 0;
                                  calculateTotalBudget();
                                });
                              },
                            ),
                          );
                        }).toList(),
                        Text(
                          "Total: $totalBudget \$",
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold, color: Color(0xFFD58E8E)
                          ),
                        ),
                        SizedBox(height: 20,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// // الدائرة مع الرقم والشريط
// SizedBox(
// height: 150,
// width: 150,
// child: Stack(
// alignment: Alignment.center,
// children: [
// // الشريط الدائري
// CircularProgressIndicator(
// value: progressPercentage,
// strokeWidth: 8,
// backgroundColor: Colors.grey[300],
// valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
// ),
// // الرقم في المنتصف
// Text(
// '${(progressPercentage * 100).toInt()}%',
// style: TextStyle(
// fontSize: 24,
// fontWeight: FontWeight.bold,
// color: Colors.black,
// ),
// ),
// ],
// ),
// ),