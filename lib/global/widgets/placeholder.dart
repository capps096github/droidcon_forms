import 'package:flutter/cupertino.dart';

import '../../droidcon_exporter.dart';

class DroidconPlaceholder extends StatelessWidget {
  ///This is a placeholder widget used to render blank sample screens in the app
  const DroidconPlaceholder({super.key, required this.title});

  /// title text for the screen
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: droidconRandomColor,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Icon(
              CupertinoIcons.circle_grid_hex_fill,
              color: droidconWhite,
              size: 80,
            ),
          ),

          const VerticalSpace(of: spacing16),

          // title
          Text(
            title + droidconRandomColor.toString(),
            style: const TextStyle(color: droidconWhite),
          ),
        ],
      ),
    );
  }
}
