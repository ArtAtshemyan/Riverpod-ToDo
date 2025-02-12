import 'package:flutter/material.dart';

import '/utils/extension/context_extensions.dart';
import 'common_container.dart';

class DisplayListOfTasks extends StatelessWidget {
  const DisplayListOfTasks({
    super.key,
    required this.tasks,
  });

  final List<Task> tasks;

  @override
  Widget build(BuildContext context) {
    final deviceSize = context.deviceSize;

    return CommonContainer(
      height: deviceSize.height * 0.3,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 8,
        padding: EdgeInsets.zero,
        itemBuilder: (context, index) => Text(
          'Home',
        ),
      ),
    );
  }
}
