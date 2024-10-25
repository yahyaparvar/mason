import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../{{name.snakeCase()}}.dart';

class {{name.pascalCase()}}View extends StatelessWidget {

  const {{name.pascalCase()}}View({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => {{name.pascalCase()}}Bloc(),
      child: BlocBuilder<{{name.pascalCase()}}Bloc, {{name.pascalCase()}}State>(
        builder: (context, state) {
          if (state is {{name.pascalCase()}}Initial) {
            return Scaffold(
              appBar: AppBar(title: const Text('{{name.pascalCase()}}')),
              body: const Center(child: Text('Hello from {{name.pascalCase()}}!')),
            );
          }
          return Container(); // Handle other states here.
        },
      ),
    );
  }
}
