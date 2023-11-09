import '../../droidcon_exporter.dart';

class AppLoader extends StatelessWidget {
  const AppLoader({
    super.key,
    this.iconColor = droidconColor,
  });

  // icon color
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding8,
      child: Column(
        children: [
          const Spacer(),
          Center(child: AppLogo(color: iconColor)),

          const Spacer(),
          Center(
            child: SizedBox(
              width: 40,
              height: 40,
              child: CircularProgressIndicator(
                strokeWidth: 4,
                valueColor: AlwaysStoppedAnimation<Color>(iconColor),
              ),
            ),
          ),
          const VerticalSpace(of: spacing40) // ,Center
        ],
      ),
    );
  }
}
