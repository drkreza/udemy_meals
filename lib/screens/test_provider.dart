import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

var simpleProvider = Provider<String>((ref) => 'some string');

class TestProviderScreeen extends ConsumerWidget {
  const TestProviderScreeen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    var result = ref.watch(simpleProvider);

    return Scaffold(
      body: Center(
        child: Text(result),
      ),
    );
  }
}
