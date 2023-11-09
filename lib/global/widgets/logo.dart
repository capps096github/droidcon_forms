import '../../droidcon_exporter.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    this.logoSize = appLogoSize,
    this.isGreen = true,
    this.color,
  });

  // width and height
  final double logoSize;

  // is green
  final bool isGreen;

  // color
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: borderRadius4,
      clipBehavior: Clip.antiAlias,
      child: Icon(
        Icons.android,
        semanticLabel: 'Droidcon Logo',
        color: color ?? (isGreen ? droidconColor : droidconWhite),
        size: logoSize,
      ),
    );
  }
}

class PaddedLogo extends StatelessWidget {
  const PaddedLogo({
    super.key,
    this.logoSize = appLogoSize,
    this.padding = padding16,
    this.isGreen = true,
  });

  // icon size
  final double logoSize;

  // is green
  final bool isGreen;

  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Center(
        child: AppLogo(
          logoSize: logoSize,
          isGreen: isGreen,
        ),
      ),
    );
  }
}
