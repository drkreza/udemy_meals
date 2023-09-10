import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:udemy_meals/provider/complex_provider.dart';

class TestComplexProviderScreen extends ConsumerStatefulWidget {
  const TestComplexProviderScreen({super.key});

  @override
  ConsumerState<TestComplexProviderScreen> createState() =>
      _TestComplexProviderScreenState();
}

class _TestComplexProviderScreenState
    extends ConsumerState<TestComplexProviderScreen> {
  @override
  Widget build(BuildContext context) {
    var name = ref.watch(complexProvider);

    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: (){
            ref.read(complexProvider.notifier).changeName('ali');
          },
          child: Text(name),),
      ),
    );
  }
}
