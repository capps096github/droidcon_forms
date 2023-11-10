import '../../../droidcon_exporter.dart';
import '../components/auth_heading.dart';

class LoginText extends ConsumerWidget {
  const LoginText({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // username
    final username = ref.watch(userNameProvider);

    // login text, check if username is empty, show Login else add a name
    final loginText = (username.isEmpty) ? "Login" : "Hey $username,\nWelcome Back!";

    return AuthHeader(heading: loginText);
  }
}
