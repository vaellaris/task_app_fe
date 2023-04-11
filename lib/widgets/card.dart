import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  final String description;
  final String location;
  final String startTime;
  final String endTime;
  final String imgUrl;
  final List<String> avatarUrl;

  TaskCard({
    super.key,
    required this.backgroundColor,
    required this.title,
    required this.description,
    required this.location,
    required this.startTime,
    required this.endTime,
    required this.imgUrl,
    required this.avatarUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 350,
        height: 231,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 18,
                          color: Color.fromARGB(153, 0, 0, 0)),
                    ),
                    CircleAvatar(backgroundImage: NetworkImage(imgUrl))
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 6.0),
                child: Text(
                  description,
                  style: const TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Color.fromARGB(255, 112, 112, 112)),
                ),
              ),
              Row(
                children: [
                  const Icon(
                    Icons.location_pin,
                    color: Color(0xff1156F4),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0),
                    child: Text(
                      location,
                      style: const TextStyle(
                          fontSize: 16, color: Color(0xff1156F4)),
                    ),
                  ),
                ],
              ),
              //Horizontal line
              Padding(
                padding: const EdgeInsets.only(top: 16, bottom: 16),
                child: Container(
                  color: Color.fromARGB(255, 128, 128, 128),
                  height: 0.8,
                  width: 320,
                ),
              ),

              Row(
                children: [
                  const Icon(
                    Icons.access_time_sharp,
                    color: Color.fromARGB(153, 0, 0, 0),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 4.0, right: 98),
                    child: Text('$startTime - $endTime'),
                  ),
                  // Face pile
                  for (int i = 0; i < avatarUrl.length; i++)
                    Align(
                      widthFactor: 0.7,
                      child: CircleAvatar(
                          backgroundImage: NetworkImage(avatarUrl[i])),
                    )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
