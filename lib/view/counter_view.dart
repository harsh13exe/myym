import 'package:flutter/material.dart';
import 'package:mvvm_architecture/viewmodel/counter_view_model.dart';
import 'package:provider/provider.dart';

class CounterView extends StatelessWidget {
  const CounterView({super.key});

  @override
  Widget build(BuildContext context) {
    final viewModel = Provider.of<CounterViewModel>(context);
    return Scaffold(
      appBar: AppBar(title: Text("Counter App with MVVM")),
      body: Center(child: Text('${viewModel.counter}')),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          viewModel.increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
