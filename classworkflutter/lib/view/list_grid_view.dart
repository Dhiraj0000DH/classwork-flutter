import 'package:flutter/material.dart';

class ListGridView extends StatelessWidget {
  const ListGridView({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> items =
        List.generate(10, (index) => 'Item ${index + 1}');

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('List and Grid View'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.list), text: 'List View'),
              Tab(icon: Icon(Icons.grid_view), text: 'Grid View'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // List View
            ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: CircleAvatar(
                    child: Text(items[index][0]),
                  ),
                  title: Text(items[index]),
                  subtitle: Text('Subtitle for ${items[index]}'),
                  onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Tapped on ${items[index]}')),
                  ),
                );
              },
            ),
            // Grid View
            GridView.builder(
              itemCount: items.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
              ),
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Tapped on ${items[index]}')),
                  ),
                  child: Card(
                    margin: const EdgeInsets.all(8),
                    color: Colors.lightBlue.shade100,
                    child: Center(
                      child: Text(
                        items[index],
                        style: const TextStyle(fontSize: 16),
                      ),
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

void main() {
  runApp(const MaterialApp(
    home: ListGridView(),
    debugShowCheckedModeBanner: false,
  ));
}
