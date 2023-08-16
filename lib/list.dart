import 'package:flutter/material.dart';
import 'package:untitled/provider/count_provider.dart';
import 'package:provider/provider.dart';

class ListWidget extends StatefulWidget {
  const ListWidget({Key? key}) : super(key: key);
  @override
  State<ListWidget> createState() => _ListWidgetState();
}

class _ListWidgetState extends State<ListWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Consumer<CountProvider>(builder: (context, value, child) {
      return ListView.builder(
          itemCount: value.data?.length, itemBuilder: (context, index) => Container(
          padding: const EdgeInsets.all(4),
          child: Row(
            children: [
              Text("${value.data?[index]}"),
              MaterialButton(
                onPressed: () {
                  value.setCount(index);
                },
                child: const Text("+"),
              )
            ],
          )));
    }));
  }
}


