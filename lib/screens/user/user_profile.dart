import '../../droidcon_exporter.dart';
import 'components/profile_credentials.dart';
import 'logout_button.dart';
import 'components/profile_header.dart';

class UserProfile extends ConsumerWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // app user
    final appUser = ref.watch(currentUserProvider);
    //
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: white,
          onPressed: () {
            // check go to auth
            ref.read(goRouterProvider).go(authPath);
          },
        ),
        title: const Text(
          'DroidCon',
          style: TextStyle(color: white),
        ),
        backgroundColor: primaryColor,
      ),
      // extendBodyBehindAppBar: true,
      body: ListView(
        children: [
          // profile header with photo, name, email
          ProfileHeader(appUser: appUser),
          const VerticalSpace(of: spacing64),

          ProfileCredentials(appUser: appUser),
          const VerticalSpace(of: spacing32),

          // logout button
          const LogoutButton(),
          const VerticalSpace(of: spacing16),
        ],
      ),
    );
  }
}
