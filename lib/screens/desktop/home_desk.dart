import 'package:flutter/material.dart';

class HomeDesk extends StatelessWidget {
  const HomeDesk({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            color: Colors.white,
            height: 100,
            child: Row(
              children: [
                const Expanded(
                  flex: 2,
                  child: Row(
                    children: [
                      CircleAvatar(),
                      Text('Let them'),
                    ],
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Row(
                      children: [
                        const Text('Upcoming Appointments'),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.toggle_off_outlined))
                      ],
                    ))
              ],
            ),
          ),
          Container(
            height: 600,
            child: Row(
              children: [
                Container(
                  height: 300,
                  width: 400,
                  color: Colors.blueAccent,
                ),
                Expanded(
                  child: ListView.builder(
                      itemCount: 20,
                      itemBuilder: (context, index) {
                        return Container(
                          height: 80,
                          width: 200,
                          color: Colors.amber,
                          margin: EdgeInsets.all(20),
                        );
                      }),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
