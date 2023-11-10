import '../../../droidcon_exporter.dart';
import 'login_form.dart';
import 'login_text.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    //
    return const ExpandedScrollingColumn(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Spacer(),
        PaddedLogo(),
        Spacer(),
        LoginText(),
        VerticalSpace(of: spacing16),
        LoginForm(),
        Spacer(),
      ],
    );
  }
}
