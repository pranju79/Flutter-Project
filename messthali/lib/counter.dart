import 'package:flutter/material.dart';
import 'package:messthali/bloc/counter_bloc.dart';
import 'package:messthali/bloc/counter_event.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  final _bloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink[400],
        title: const Text(
          'COUNTER',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontSize: 28,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: StreamBuilder(
            stream: _bloc.counter,
            initialData: 0,
            builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(bottom: 190),
                    child: Text(
                      'Count:  ${snapshot.data}',
                      style: TextStyle(
                        color: Colors.pink[400],
                        fontSize: 45,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ],
              );
            }),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 130),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FloatingActionButton(
              backgroundColor: Colors.pink[400],
              foregroundColor: Colors.white,
              onPressed: () => _bloc.counterEventSink.add(DecrementEvent()),
              tooltip: 'Decrement',
              child: const Icon(
                Icons.remove,
                size: 35,
              ),
            ),
            const SizedBox(width: 400),
            FloatingActionButton(
              backgroundColor: Colors.pink[400],
              foregroundColor: Colors.white,
              onPressed: () => _bloc.counterEventSink.add(IncrementEvent()),
              tooltip: 'Increment',
              child: const Icon(
                Icons.add,
                size: 35,
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _bloc.dispose();
  }
}
