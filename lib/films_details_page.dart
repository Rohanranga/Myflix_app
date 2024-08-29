import 'package:flutter/material.dart';
import 'package:myflix_app/downlaod_provider.dart';
import 'package:provider/provider.dart';

class filmsDetailsPage extends StatefulWidget {
  final Map<String, Object> films;
  const filmsDetailsPage({super.key, required this.films});

  @override
  _filmsDetailsPageState createState() => _filmsDetailsPageState();
}

class _filmsDetailsPageState extends State<filmsDetailsPage> {
  void ontap() {
    Provider.of<DownlaodProvider>(context, listen: false).addfilms(
      {
        'id': widget.films['id'],
        'title': widget.films['title'],
        'imageUrl': widget.films['imageUrl'],
        'director': widget.films['director'],
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Movie info',
        ),
      ),
      body: Column(
        children: [
          Text(
            widget.films['title'] as String,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset(widget.films['imageUrl'] as String),
          ),
          const Spacer(),
          Container(
            height: 200, // added this line
            decoration: BoxDecoration(
              color: const Color.fromRGBO(245, 247, 249, 1),
              borderRadius: BorderRadius.circular(40),
            ),
            child: Column(
              children: [
                Text(
                  '@${widget.films['director']}',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    onPressed: ontap,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      minimumSize: const Size(300, 50),
                    ),
                    child: const Text(
                      'Add to downloads',
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
