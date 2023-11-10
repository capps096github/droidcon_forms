import '../droidcon_exporter.dart';

class Droidcon extends ConsumerWidget {
  ///This is the root of our droidcon app
  const Droidcon({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final goRouter = ref.watch(goRouterProvider);

    final droidconTheme = ref.watch(droidconThemeProvider);

    return MaterialApp.router(
      // -- Router --
      routerConfig: goRouter,

      // -- Theme --
      color: primaryColor,
      theme: droidconTheme,

      // -- Title --
      title: droidconTitle,
      restorationScopeId: droidconAppId,

      // -- Debug Mode --
      debugShowCheckedModeBanner: false,

      // -- Bouncing Scroll Behavior --
      scrollBehavior: const MaterialScrollBehavior().copyWith(
        physics: const BouncingScrollPhysics(),
        scrollbars: false,
      ),
    );
  }
}
