import 'package:flutter/material.dart';

import 'widget//date_widget.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedDate = 19;

  void _selectedDate(int date) {
    setState(() {
      selectedDate = date;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: const Text(
          "BOOKING",
          style: TextStyle(
            fontFamily: 'firSans',
            fontSize: 16.0,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back),
          color: Colors.black, 
        ),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: 100.0,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 3.0,
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 4.0,
                    )
                  ],
                  color: Colors.white,
                ),
              ),
            Positioned(
              top: 20.0,
              left: 15.0,
              right: 15.0,
              child: SizedBox(
                height: 60.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    DateWidget(
                      date: 18, 
                      day: 'Tue',
                      tapHandler: _selectedDate,
                      isSelected: selectedDate == 18,
                    ),
                    const SizedBox(width: 25.0),

                    DateWidget(
                      date: 19, 
                      day: 'Tue',
                      tapHandler: _selectedDate,
                      isSelected: selectedDate == 19,
                    ),
                    const SizedBox(width: 25.0),

                    DateWidget(
                      date: 20, 
                      day: 'Tue',
                      tapHandler: _selectedDate,
                      isSelected: selectedDate == 20,
                    ),
                    const SizedBox(width: 25.0),

                    DateWidget(
                      date: 21, 
                      day: 'Tue',
                      tapHandler: _selectedDate,
                      isSelected: selectedDate == 21,
                    ),
                    const SizedBox(width: 25.0),

                    DateWidget(
                      date: 22, 
                      day: 'Tue',
                      tapHandler: _selectedDate,
                      isSelected: selectedDate == 22,
                    ),
                    const SizedBox(width: 25.0),

                    DateWidget(
                      date: 23, 
                      day: 'Tue',
                      tapHandler: _selectedDate,
                      isSelected: selectedDate == 23,
                    ),
                    const SizedBox(width: 25.0),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 35.0),
          Center(
            child: Text(
              'BARBERKING',
              style: TextStyle(
                letterSpacing: 2.0,
                fontFamily: 'Nunito',
                fontSize: 30.0,
                color: Colors.black.withOpacity(0.6),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}