import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:todo_riverpod/utils/extension/context_extensions.dart';
import 'package:todo_riverpod/widgets/common_container.dart';
import 'package:todo_riverpod/widgets/display_white_text.dart';

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
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DisplayWhiteText(
                      text: 'Aug 7, 2025',
                      fontSize: 20.0,
                      fontWeight: FontWeight.normal,
                    ),
                    Gap(10.0),
                    DisplayWhiteText(
                      text: 'My ToDo List',
                      fontSize: 40.0,
                      fontWeight: FontWeight.normal,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            top: deviceSize.height / 5,
            left: 0,
            right: 0,
            child: SingleChildScrollView(
              padding: EdgeInsets.all(20.0),
              physics: AlwaysScrollableScrollPhysics(),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  CommonContainer(
                    height: deviceSize.height * 0.3,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 8,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) => Text(
                        'Home',
                      ),
                    ),
                  ),
                  Gap(20.0),
                  Text(
                    'Completed',
                    style: context.textTheme.headlineMedium,
                  ),
                  Gap(20.0),
                  CommonContainer(
                    height: deviceSize.height * 0.3,
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: 8,
                      padding: EdgeInsets.zero,
                      itemBuilder: (context, index) => Text(
                        'Home',
                      ),
                    ),
                  ),
                  Gap(20.0),
                  ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: DisplayWhiteText(
                        text: 'Add New Task',
                        color: colors.secondary,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
