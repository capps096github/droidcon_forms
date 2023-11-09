// Project imports:
import '../../../droidcon_exporter.dart';

class LogInButton extends ConsumerStatefulWidget {
  const LogInButton({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignInButtonState();
}

class _SignInButtonState extends ConsumerState<LogInButton> {
// istapped
  bool isButtonTapped = false;

  @override
  Widget build(BuildContext context) {
    final signInFormKey = ref.watch(loginFormKeyProvider);

    // login credentials
    final loginCredentials = ref.watch(loginCredentialsProvider);

    // userServiceProvider
    final userService = ref.watch(userServiceProvider);

    return CircularProgressAppButton(
      isTapped: isButtonTapped,
      onTap: () async {
        // reset the error to an empty string
        ref.read(authErrorTextProvider.notifier).state = '';

        // Unfocus Keyboard
        FocusScopeNode currentFocus = FocusScope.of(context);
        if (!currentFocus.hasPrimaryFocus) {
          currentFocus.unfocus();
        }

        // validate the form
        // and then authenticate if valid
        if (signInFormKey.currentState!.validate()) {
          enableTap();
          // * Sign In
          await userService
              .login(loginCredentials: loginCredentials)
              .then((_) async {
            printer('Request successful!');

            disableTap();
            // clear the form after sign in
            signInFormKey.currentState!.reset();

            // TODO go to the home page
            ref.read(goRouterProvider).go(homePath);
          });
        } else {
          //Error disable tap
          disableTap();

          ref.read(authErrorTextProvider.notifier).state =
              'Error Signing In. Try Again.';
        }
      },
      text: "LOGIN",
      textColor: droidconWhite,
      buttonColor: droidconColor,
    );
  }

  void enableTap() {
    setState(() {
      isButtonTapped = true;
    });
  }

  /// Disable the button tap
  void disableTap() {
    if (mounted) {
      setState(() {
        isButtonTapped = false;
      });
    }
  }
}
