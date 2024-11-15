import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class DailyChallengesPage extends StatefulWidget {
  const DailyChallengesPage({super.key});

  @override
  _DailyChallengesPageState createState() => _DailyChallengesPageState();
}

class _DailyChallengesPageState extends State<DailyChallengesPage> {
  DateTime today = DateTime.now();
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Make your day pollution-free'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: TableCalendar(
                headerStyle: const HeaderStyle(formatButtonVisible: false),
                focusedDay: today,
                firstDay: DateTime.utc(2023, 05, 05),
                lastDay: DateTime.utc(2024, 12, 12),
                
              ),
            ),
          ],
        ),
      ),
    );
  }
}
