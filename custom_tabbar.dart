import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Metros stations'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Text('Selected Tab: $_selectedIndex'),
      ),
      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(30)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 7,
              offset: Offset(0, 3), // changes position of shadow
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            _buildTabItem(
                icon: Icons.home, index: 0, label: "Home", color: Colors.green),
            _buildTabItem(
                icon: Icons.feedback,
                index: 1,
                label: "Feedback",
                color: Colors.green),
            _buildTabItem(
                icon: Icons.attach_money,
                index: 2,
                label: "Badges",
                color: Colors.green),
            _buildTabItem(
                icon: Icons.notifications,
                index: 3,
                label: "Notification",
                color: Colors.green),
            _buildTabItem(
                icon: Icons.account_circle,
                index: 4,
                label: "Account",
                color: Colors.green),
          ],
        ),
      ),
    );
  }

  Widget _buildTabItem(
      {required IconData icon,
      required int index,
      required String label,
      required Color color}) {
    final textWidth = _getTextWidth(label, TextStyle(fontSize: 12));
    return GestureDetector(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: _selectedIndex == index ? color : Colors.grey,
            size: 30,
          ),
          Text(
            label,
            style: TextStyle(
              color: _selectedIndex == index ? color : Colors.grey,
              fontSize: 12,
            ),
          ),
          SizedBox(height: 4), // Space between text and underline
          // Underline for selected tab
          Container(
            height: 2,
            width: textWidth,
            color: _selectedIndex == index ? color : Colors.transparent,
          ),
        ],
      ),
    );
  }

  // Method to calculate the width of the text
  double _getTextWidth(String text, TextStyle style) {
    final textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: 1,
      textDirection: TextDirection.ltr,
    )..layout();
    return textPainter.size.width;
  }
}
