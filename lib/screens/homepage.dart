import 'package:flutter/material.dart';

import '../widgets/card.dart';
import '../widgets/bottom_nav.dart';

class MyHomepage extends StatelessWidget {
  const MyHomepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        // cards
        TaskCard(
          backgroundColor: Color(0xffF5E0DC),
          title: 'Football',
          description: 'League 1 opener postponed after Marseille virus cases.',
          location: 'Marlowe',
          startTime: '12:30 AM',
          endTime: '2:45 PM',
          imgUrl:
              'https://plus.unsplash.com/premium_photo-1677146015088-71992ac139af?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8Zm9vdGJhbGx8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
          avatarUrl: [
            'https://images.unsplash.com/photo-1601029641455-e770156e05ec?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
            'https://images.unsplash.com/photo-1517423738875-5ce310acd3da?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHB1Z3N8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60'
          ],
        ),

        //bottom navbar
        //BottomNav()
      ]),
    );
  }
}
