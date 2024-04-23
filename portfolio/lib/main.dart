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
Key Attributes:

Innovative Thinker: I thrive on challenging the status quo and exploring unconventional solutions to complex problems. My ability to think outside the box has led to numerous breakthroughs in projects I've been involved in.

Effective Communicator: Whether it's collaborating with cross-functional teams or presenting ideas to stakeholders, I excel in conveying complex concepts in a clear and concise manner. My strong communication skills facilitate seamless coordination and foster a collaborative work environment.

Adaptable and Resilient: In today's fast-paced world, adaptability is key. I embrace change with enthusiasm and approach every obstacle as an opportunity for growth. My resilience in the face of challenges allows me to navigate through uncertainties and emerge stronger than before.

Vision:

I am driven by a passion for [Industry/Field], and my ultimate goal is to [Your Vision or Long-term Goal]. Whether it's revolutionizing [Industry/Field] through innovative technologies or spearheading initiatives for social change, I am committed to making a meaningful impact that transcends boundaries.
Let's Connect:

I am always eager to collaborate on exciting projects and explore new opportunities. Feel free to reach out to me at [Your Email Address] to discuss how we can work together to bring your ideas to life.

Thank you for visiting my portfolio. I look forward to connecting with you!

Feel free to customize this text to better reflect your personality, experiences, and aspirations. Good luck with your portfolio!


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
