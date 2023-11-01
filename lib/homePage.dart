import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<String> todolist = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tarefas'),
      ),
      body: ListView.separated(
          separatorBuilder: (context, index) => Divider(
                thickness: 2,
              ),
          itemCount: todolist.length,
          itemBuilder: (context, index) {
            String item = todolist[index];
            return ListTile(
              leading: Text((index + 1).toString()),
              title: Text(item),
              subtitle: Text(item),
              trailing: const Icon(Icons.note_add_outlined),
            );
          }),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          backgroundColor: Colors.purple,
          onPressed: _irparatelaDeImput),
    );
  }

  void _irparatelaDeImput() async {
    String? retorno =
        await Navigator.of(context).pushNamed('/imput') as String?;

    if (retorno != null) {
      setState(() {
        todolist.add(retorno);
      });
    }
  }
}
