import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_riverpod/utils/extension/context_extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = context.colorScheme;
    final deviceSize = context.deviceSize;

    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Container(
                height: deviceSize.height * 0.3,
                width: deviceSize.width,
                color: colors.primary,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Gap(30.0),
                      Text(
                        'Aug 7, 2025',
                        style: context.textTheme.headlineSmall?.copyWith(
                          color: colors.surface,
                          fontSize: 20.0,
                        ),
                      ),
                      Gap(10.0),
                      Text(
                        'My ToDo List',
                        style: context.textTheme.headlineSmall?.copyWith(
                          color: colors.surface,
                          fontSize: 40.0,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
