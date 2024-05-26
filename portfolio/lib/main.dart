import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Portfolio',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('My Portfolio'),
        ),
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage('Tayyab.jpg'), 
                    radius: 50.0,
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Tayyab Ahmad',
                        style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                      Text('Software Engineer'),
                    ],
                  ),
                ],
              ),
              Divider(thickness: 1.0),
              Text('''Hello, I'm Tayyab, a passionate and dedicated App Developer with a flair for Developer. With 1 years of experience in software Engineering, I have honed a versatile skill set that combines technical expertise with creative problem-solving.


''', style: TextStyle(fontSize: 16.0)),
              Divider(thickness: 1.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Currently work as a Student', style: TextStyle(fontSize: 18.0)),
                  // Add experience details as Text or ListTile widgets here
                ],
              ),
              Divider(thickness: 1.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Projects',
                    style: TextStyle(fontSize: 18.0),
                  ),
                  SizedBox(height: 10.0),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 300.0, // Adjust maximum height as needed
                    ),
                    child: ListView.builder(
                      itemCount: projects.length, // Use the length of your project list
                      itemBuilder: (context, index) => Card(
                        child: ListTile(
                          title: Text(projects[index]['title']),
                          subtitle: Text(projects[index]['description']),
                          trailing: Wrap(
                            children: [
                              for (var tech in projects[index]['techStack'])
                                Chip(label: Text(tech)),
                            ],
                          ),
                          onTap: () {
                            // Navigate to project details page
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProjectDetails(project: projects[index]),
                              ),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Project Details Page
class ProjectDetails extends StatelessWidget {
  final Map<String, dynamic> project;

  const ProjectDetails({Key? key, required this.project}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(project['title']),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(project['title'], style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold)),
            Text(project['description']),
            // You can add more details here
          ],
        ),
      ),
    );
  }
}


List<Map<String, dynamic>> projects = [
  {
    'title': 'Voice Control Car',
    'description': 'Control by our voice like we feed four commands like Forward,Backward,Left,Right',
    'techStack': ['Technology 1', 'Technology 2'],
  },
 
];
