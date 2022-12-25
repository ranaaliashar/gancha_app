import 'package:flutter/material.dart';


class EmptyScreen extends StatelessWidget {
  const EmptyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(30),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/logo.png', width: 200, height: 100),
            const SizedBox(height: 20),
            Text('Empty', style: Theme.of(context).textTheme.headline6?.copyWith(
              color: Colors.grey.withOpacity(0.5)
            ))
          ],
        ),
      ),
    );
  }
}
