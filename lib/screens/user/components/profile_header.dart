import '../../../droidcon_exporter.dart';
import 'profile_clipper.dart';
import 'user_profile_icon.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({super.key, required this.appUser});
  final AppUser appUser;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          clipBehavior: Clip.none,
          children: [
            ClipPath(
              clipper: ProfileClipper(),
              child: Container(
                color: primaryColor,
                height: profileClipperHeight,
              ),
            ),
            Positioned(
              bottom: -80,
              child: UserProfileIcon(appUser: appUser),
            ),
          ],
        ),
      ],
    );
  }
}
