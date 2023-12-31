import '../../droidcon_exporter.dart';
import 'auth_body.dart';
import 'auth_page.dart';

class DroidconAuth extends ConsumerWidget {
  const DroidconAuth({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // WelcomeScreen
    // final isWelcomeFinished = !ref.watch(isWelcomeFinishedProvider);

    return const Scaffold(
      backgroundColor: white,
      // body: isWelcomeFinished ? const Auth() : const WelcomeScreen(),
      body: Auth(),
    );
  }
}

class Auth extends ConsumerWidget {
  const Auth({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authpage = ref.watch(authPageProvider);

    //
    return Padding(
      padding: horizontalPadding16,
      child: SafeArea(
        child: Center(
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: maxAuthWidth),
            child: AuthBody(child: authpage.page),
          ),
        ),
      ),
    );
  }
}
