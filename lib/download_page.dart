import "package:flutter/material.dart";
import "package:myflix_app/downlaod_provider.dart";
import "package:provider/provider.dart";

class DownloadPage extends StatelessWidget {
  const DownloadPage({super.key});

  @override
  Widget build(BuildContext context) {
    final downloads = Provider.of<DownlaodProvider>(context).download;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Downloaded movies '),
      ),
      body: ListView.builder(
        itemCount: downloads.length,
        itemBuilder: (context, index) {
          final downloadItem = downloads[index];

          return ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage(downloadItem['imageUrl'] as String),
              radius: 30,
            ),
            trailing: IconButton(
              onPressed: () {
                Provider.of<DownlaodProvider>(context, listen: false)
                    .removefilms(downloadItem);
              },
              icon: const Icon(
                Icons.delete,
                color: Colors.red,
              ),
            ),
            title: Text(
              downloadItem['title'].toString(),
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(downloadItem['director'].toString()),
          );
        },
      ),
    );
  }
}
