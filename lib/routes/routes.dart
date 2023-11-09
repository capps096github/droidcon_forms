import '../../droidcon_exporter.dart';

///* this provides the default router delegate for the app
final goRouterProvider = Provider<GoRouter>((ref) {
  return droidconRouter;
});

// router delegate
final droidconRouter = GoRouter(
  initialLocation: initialPath,
  restorationScopeId: droidconAppId,
  routes: [
    //* splash
    GoRoute(
      path: splashPath,
      builder: (context, state) => const DroidconSplash(),
    ),

    //* home page
    GoRoute(
      path: homePath,
      builder: (context, state) => const DroidconHome(),
    ),

    //* auth
    GoRoute(
      path: authPath,
      builder: (context, state) => const DroidconAuth(),
    ),
  ],

  redirect: (_, state) {
    //TODO if the user is not logged in, redirect to the auth page

    //TODO if the user is logged in, don't redirect to any page just continue with the initial path
    return null;
  },
  errorBuilder: (context, state) => DroidconErrorScreen(error: state.error),
  // log diagnostic info for your routes
  debugLogDiagnostics: true,
);
