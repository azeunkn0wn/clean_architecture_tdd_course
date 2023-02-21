import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../injection_container.dart';
import '../bloc/number_trivia_bloc.dart';

class NumberTriviaPage extends StatelessWidget {
  const NumberTriviaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Number Trivia'),
      ),
      body: buildBody(context),
    );
  }

  BlocProvider<NumberTriviaBloc> buildBody(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<NumberTriviaBloc>(),
      child: Column(
        children: [
          SizedBox(
            height: 10,
            // Top Half
          ),
          Container(
            height: MediaQuery.of(context).size.height / 3,
            child: Placeholder(),
          ),
          SizedBox(
            height: 20,
          ),
          // Bottom half
          Column(
            children: [
              Placeholder(
                fallbackHeight: 40,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  Expanded(child: Placeholder()),
                  Expanded(child: Placeholder()),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
