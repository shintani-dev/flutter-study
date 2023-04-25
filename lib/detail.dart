import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'provider.dart';
import 'package:go_router/go_router.dart';

class Detail extends HookConsumerWidget {
  const Detail({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(counterProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SafeArea(child: Column(
        children: <Widget>[
          Expanded(child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'You have pushed the button this many times:',
                ),
                Text(
                  '$count',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ],
            ),
          ),),
          Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
                onPressed: () => context.go('/'),
                child: const Text('Go home!')
            ),
          ),
        ],
      ),),
    );
  }
}