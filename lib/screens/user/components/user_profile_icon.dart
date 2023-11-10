import '../../../droidcon_exporter.dart';
import 'profile_pic.dart';

class UserProfileIcon extends ConsumerWidget {
  const UserProfileIcon({
    super.key,
    required this.appUser,
  });

  final AppUser appUser;

  @override
  Widget build(BuildContext context, ref) {
    return Center(
      child: Tooltip(
        message: 'Profile picture',
        child: ProfilePic(
          border: Border.all(
            color: primaryColor,
            width: 2,
          ),
          appUser: appUser,
        ),
      ),
    );
  }
}
