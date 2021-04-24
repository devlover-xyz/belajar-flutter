import 'package:flutter/material.dart';
import 'package:supercharged/supercharged.dart';

void main() => runApp(RamadhanApp());

/* 
void main() {
  runApp(MyApp());
}
 */

class RamadhanApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Column _buildButtonColoumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: color,
          ),
          Text(
            label,
            style: TextStyle(color: color),
          ),
        ],
      );
    }

    var titleSection = Container(
      padding: EdgeInsets.all(32),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  'Kandersteg, Switzerland',
                  style: TextStyle(color: Colors.grey),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 3.0),
            child: Icon(
              Icons.star,
              color: Colors.amber,
            ),
          ),
          Text('41')
        ],
      ),
    );

    var color = Theme.of(context).primaryColor;

    var buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColoumn(color, Icons.call, 'CALL'),
          _buildButtonColoumn(color, Icons.near_me, 'ROUTE'),
          _buildButtonColoumn(color, Icons.share, 'SHARE'),
        ],
      ),
    );

    var textSection = Container(
      padding: EdgeInsets.all(32),
      child: Text(
          'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
          'Alps. Situated 1,578 meters above sea level, it is one of the '
          'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
          'half-hour walk through pastures and pine forest, leads you to the '
          'lake, which warms to 20 degrees Celsius in the summer. Activities '
          'enjoyed here include rowing, and riding the summer toboggan run.'),
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Latihan Layout'),
        ),
        body: Column(
          children: [
            /// image section
            Image.asset(
              'images/photo1.jpeg',
              width: double.infinity,
              height: 240,
              fit: BoxFit.cover,
            ),

            /// title section
            titleSection,

            /// button section
            buttonSection,

            /// text section
            textSection
          ],
        ),
      ),
    );
  }
}
