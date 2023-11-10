import '../../droidcon_exporter.dart';

class LogoutButton extends ConsumerWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    //
    return Padding(
      padding: padding16,
      child: AppButton(
        icon: Icons.logout,
        label: "LOG OUT",
        buttonColor: red.withOpacity(.1),
        textColor: red,
        onTap: () async {
          resetAuthProviders(ref);

          printer("User logged out successfully", isSuccess: true);
          // check go to auth
          ref.read(goRouterProvider).go(authPath);
        },
      ),
    );
  }
}
