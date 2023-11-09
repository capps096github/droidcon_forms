import '../../droidcon_exporter.dart';

class DroidconSplash extends ConsumerWidget {
  const DroidconSplash({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // splashWaiterProvider
    final splashWaiter = ref.watch(splashWaiterProvider);

    return Scaffold(
      backgroundColor: droidconWhite,
      body: splashWaiter.when(
        // go to auth page with form
        data: (_) => const Auth(),
        loading: () => const AppLoader(iconColor: droidconColor),
        error: (error, stackTrace) =>
            ErrorDisplay(stackTrace: stackTrace, error: error),
      ),
    );
  }
}

// splash simulator
final splashWaiterProvider = FutureProvider<void>((ref) async {
  return futureCallSimulator();
});
