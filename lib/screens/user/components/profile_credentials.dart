import '../../../droidcon_exporter.dart';
import 'profile_tile.dart';

class ProfileCredentials extends ConsumerWidget {
  const ProfileCredentials({
    super.key,
    required this.appUser,
  });

  final AppUser appUser;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //
    return Padding(
      padding: padding16,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const VerticalSpace(of: spacing8),
          // name get the first name by splitting the name
          Text(
            "@${appUser.username}",
            style: const TextStyle(
              fontSize: fontSize24 * 2,
              fontWeight: FontWeight.w800,
              color: primaryColor,
            ),
          ),
          const VerticalSpace(of: spacing32),

          // loop thru credentials
          ...List.generate(signUpFormFields.length, (index) {
            final formField = signUpFormFields[index];
            return ProfileTile(
              tooltip: formField.label,
              icon: formField.prefixIcon,
              label: formField.label,
              subtitle: ref.watch(firstNameProvider).toString(),
            );
          }),
        
        ],
      ),
    );
  }
}
