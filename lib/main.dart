import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: WebLayout(),
      ),
    );
  }
}

class WebLayout extends StatelessWidget {
  const WebLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        // Sidebar
        Flexible(
          flex: 2,
          child: Container(
            color: const Color(0xFFF0C987),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Undiknas Admission',
                    style: TextStyle(color: Color(0xFF37474F), fontSize: 24),
                  ),
                ),
                SidebarItem(title: "Dashboard"),
                SidebarItem(title: "QR Code"),
                SidebarItem(title: "Bill"),
                SidebarItem(title: "E-polling"),
                SidebarItem(title: "Event Attendance"),
                SidebarItem(title: "Announcement"),
                SidebarItem(title: "Curriculum"),
                SidebarItem(title: "Profile"),
                SidebarItem(title: "KTM Registration"),
                SidebarItem(title: "Academic Guidance"),
                SidebarItem(title: "Study Plan Form"),
                SidebarItem(title: "Course Schedule"),
              ],
            ),
          ),
        ),
        
        // Main Content Area
        Expanded(
          flex: 8,
          child: Column(
            children: [
              // Header
              Container(
                padding: const EdgeInsets.all(16),
                color: const Color(0xFF2A3B4D),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Student Dashboard',
                      style: TextStyle(color: Color(0xFFECEFF1), fontSize: 24),
                    ),
                    Row(
                      children: [
                        Icon(Icons.person, color: Colors.white),
                        SizedBox(width: 10),
                        Icon(Icons.notifications, color: Colors.white),
                      ],
                    ),
                  ],
                ),
              ),
              
              // Main Content
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  color: const Color(0xFFF9F9F9),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      // Student Identity Card Section
                      Card(
                        margin: const EdgeInsets.only(bottom: 16),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Student Identity Card',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF455A64),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(height: 16),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/img', // Replace with your image path
                                    width: 150,
                                    height: 100,
                                  ),
                                  const SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: const Text("Download"),
                                      ),
                                      const SizedBox(height: 8),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: const Text("KTM Print Registration"),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),

                      const Card(
                        child: Padding(
                          padding: EdgeInsets.all(16.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Pembimbing Akademik(PA)',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Color(0xFF455A64),
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(height: 16),
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 40,
                                    backgroundImage: AssetImage('assets/supervisor.png'),
                                  ),
                                  SizedBox(width: 20),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Ir. Adie Wahyudi Oktavia Gama S.T., M.T., IPM., ASEAN Eng.',
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Color(0xFF455A64),
                                        ),
                                      ),
                                      SizedBox(height: 8),
                                      Text(
                                        'adiewahyudi@undiknas.ac.id',
                                        style: TextStyle(
                                          fontSize: 14,
                                          color: Color(0xFF757575),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

// Sidebar Item Widget
class SidebarItem extends StatelessWidget {
  final String title;

  const SidebarItem({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(color: Color(0xFF37474F)),
      ),
    );
  }
}
