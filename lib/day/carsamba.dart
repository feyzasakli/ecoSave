import 'package:flutter/material.dart';

class CarsambaPage extends StatefulWidget {
  const CarsambaPage({Key? key}) : super(key: key);

  @override
  _CarsambaPageState createState() => _CarsambaPageState();
}

class _CarsambaPageState extends State<CarsambaPage> {
  final List<Task> mandatoryTasks = [
    Task('Görev 1', 'Görev 1 Açıklama', 2),
    Task('Görev 2', 'Görev 2 Açıklama', 2),
    Task('Görev 3', 'Görev 3 Açıklama', 2),
    Task('Görev 4', 'Görev 4 Açıklama', 2),
    Task('Görev 5', 'Görev 5 Açıklama', 2),
  ];

  final List<Task> additionalTasks = [
    Task('Ek Görev 1', 'Ek Görev 1 Açıklama', 5),
    Task('Ek Görev 2', 'Ek Görev 2 Açıklama', 5),
    Task('Ek Görev 3', 'Ek Görev 3 Açıklama', 5),
  ];

  int mandatoryCompletedTasks = 0;
  int mandatoryTotalPoints = 0;

  int additionalCompletedTasks = 0;
  int additionalTotalPoints = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color(0xFF17A3A2), // #17A3A2 on the left
                Color(0xFF52C077), // #52C077 on the right
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Icon(Icons.check),
                SizedBox(width: 5),
                Text(
                  'Tamamlanan: 5',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.view_day),
                SizedBox(width: 5),
                Text(
                  'Kalan: 2',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
            Row(
              children: [
                Icon(Icons.stars),
                SizedBox(width: 5),
                Text('8'),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(16.0),
              child: Text(
                'Nasılsın, Ömer',
                style: TextStyle(fontSize: 24),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Zorunlu Görevler',
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tamamlanan Görevler: $mandatoryCompletedTasks / 5',
                        style: const TextStyle(fontSize: 14),
                      ),
                      Text(
                        'Toplam Puan: $mandatoryTotalPoints / 15',
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: mandatoryTasks.length,
              itemBuilder: (context, index) {
                final task = mandatoryTasks[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF238C67),
                          Color(0xFF32B98F),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ExpansionTile(
                      leading: Checkbox(
                        value: task.isCompleted,
                        shape: const CircleBorder(),
                        onChanged: (value) {
                          setState(() {
                            task.isCompleted = value ?? false;
                            if (task.isCompleted) {
                              mandatoryCompletedTasks++;
                              mandatoryTotalPoints += task.points;
                              if (mandatoryCompletedTasks > 5) {
                                mandatoryCompletedTasks = 5;
                              }
                              if (mandatoryTotalPoints > 15) {
                                mandatoryTotalPoints = 15;
                              }
                            } else {
                              mandatoryCompletedTasks--;
                              mandatoryTotalPoints -= task.points;
                              if (mandatoryCompletedTasks < 0) {
                                mandatoryCompletedTasks = 0;
                              }
                              if (mandatoryTotalPoints < 0) {
                                mandatoryTotalPoints = 0;
                              }
                            }
                          });
                        },
                      ),
                      title: Text(
                        task.title,
                        style:
                            const TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Açıklama: ${task.description}',
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Puan: ${task.points}',
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Ek Görevler',
                    style: TextStyle(fontSize: 18),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Tamamlanan Görevler: $additionalCompletedTasks / 3',
                        style: const TextStyle(fontSize: 14),
                      ),
                      Text(
                        'Toplam Puan: $additionalTotalPoints / 10',
                        style: const TextStyle(fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: additionalTasks.length,
              itemBuilder: (context, index) {
                final task = additionalTasks[index];
                return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [
                          Color(0xFF00ADB5),
                          Color(0xFF4DC3C5),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: ExpansionTile(
                      leading: Checkbox(
                        value: task.isCompleted,
                        shape: const CircleBorder(),
                        onChanged: (value) {
                          setState(() {
                            task.isCompleted = value ?? false;
                            if (task.isCompleted) {
                              additionalCompletedTasks++;
                              additionalTotalPoints += task.points;
                              if (additionalCompletedTasks > 3) {
                                additionalCompletedTasks = 3;
                              }
                              if (additionalTotalPoints > 10) {
                                additionalTotalPoints = 10;
                              }
                            } else {
                              additionalCompletedTasks--;
                              additionalTotalPoints -= task.points;
                              if (additionalCompletedTasks < 0) {
                                additionalCompletedTasks = 0;
                              }
                              if (additionalTotalPoints < 0) {
                                additionalTotalPoints = 0;
                              }
                            }
                          });
                        },
                      ),
                      title: Text(
                        task.title,
                        style:
                            const TextStyle(fontSize: 16, color: Colors.white),
                      ),
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Açıklama: ${task.description}',
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                              const SizedBox(height: 8),
                              Text(
                                'Puan: ${task.points}',
                                style: const TextStyle(
                                    fontSize: 14, color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Task {
  String title;
  String description;
  int points;
  bool isCompleted;

  Task(this.title, this.description, this.points, {this.isCompleted = false});
}
