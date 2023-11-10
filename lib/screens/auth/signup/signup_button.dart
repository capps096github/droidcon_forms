// Project imports:
import '../../../droidcon_exporter.dart';

class SignUpButton extends ConsumerStatefulWidget {
  const SignUpButton({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SignUpButtonState();
}

class _SignUpButtonState extends ConsumerState<SignUpButton> {
  // istapped
  bool isButtonTapped = false;
  @override
  Widget build(BuildContext context) {
    final signUpFormKey = ref.watch(signUpFormKeyProvider);

    // sign up credentials
    final signUpCredentials = ref.watch(signUpCredentialsProvider);

    // is password Confirmed
    final isPasswordConfirmed = ref.watch(isPasswordConfirmedProvider);

    // userServiceProvider
    final userService = ref.watch(userServiceProvider);

    return CircularProgressAppButton(
      isTapped: isButtonTapped,
      text: "SIGN UP",
      onTap: isPasswordConfirmed
          ? () async {
              // Unfocus Keyboard
              FocusScopeNode currentFocus = FocusScope.of(context);
              if (!currentFocus.hasPrimaryFocus) {
                currentFocus.unfocus();
              }

              // validate the form
              // and then authenticate if valid
              if (signUpFormKey.currentState!.validate()) {
                enableTap();
                // * Sign Up
                await userService.signUp(signUpCredentials: signUpCredentials).then((_) async {
                  printer('Request successful!');

                  disableTap();
                  // clear the form after sign in
                  signUpFormKey.currentState!.reset();

                  //  go to the home page
                  ref.read(goRouterProvider).go(homePath);
                });
              } else {
                //Error disable tap
                disableTap();

                ref.read(authErrorTextProvider.notifier).state = 'Error Signing Up. Try Again.';
              }
            }
          : () {
              // set the error to tell the user to have matching passwords
              ref.read(authErrorTextProvider.notifier).state = 'Passwords do not match';
            },
      textColor: white,
      buttonColor: primaryColor,
    );
  }

  /// Disable the button tap
  void disableTap() {
    if (mounted) {
      setState(() {
        isButtonTapped = false;
      });
    }
  }

  void enableTap() {
    setState(() {
      isButtonTapped = true;
    });
  }
}
