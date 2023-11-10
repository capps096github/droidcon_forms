// Package imports:

import '../../../droidcon_exporter.dart';

class ProfilePic extends StatelessWidget {
  const ProfilePic({
    super.key,
    this.radius = spacing72,
    this.margin = margin8,
    this.border,
    required this.appUser,
  });

  // redius
  final double radius;

  // border
  final BoxBorder? border;

// margin
  final EdgeInsetsGeometry? margin;

  final AppUser appUser;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      height: radius * 2,
      width: radius * 2,
      decoration: BoxDecoration(
        color: white,
        shape: BoxShape.circle,
        border: border,
      ),
      child: const PaddedLogo(),
    );
  }
}
