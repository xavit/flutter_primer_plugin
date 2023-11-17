import 'package:custom_transition_x/helpers/route_transitions.dart';
import 'package:custom_transition_x/pages/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Page 1'),
        backgroundColor: Colors.transparent,
      ),
      backgroundColor: Colors.brown,
      body: Center(
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
          ),
          onPressed: () {
            //Mi companente
            RouteTransitions(
              context: context,
              page: const Page2(),
              animation: AnimationType.slideRight,
              duration: const Duration(milliseconds: 500),
            );
          },
          child: const Text("Page 2 UI"),
        ),
      ),
    );
  }
}
