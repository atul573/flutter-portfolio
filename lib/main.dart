import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(Portfolio());
}

class Portfolio extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PortfolioHome(),
    );
  }
}

class PortfolioHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Portfolio'),
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 60.0,
              backgroundImage: AssetImage('images/profile.jpeg'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Atul Sharma',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Flutter Developer',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 20.0),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 30.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.phone),
                title: Text('123-456-7890'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 30.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.envelope),
                title: Text('atul573.sharma@gmail.com'),
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 30.0),
              child: ListTile(
                leading: Icon(FontAwesomeIcons.globe),
                title: Text('www.testdomain.com'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
