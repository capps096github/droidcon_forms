// ignore_for_file: use_build_context_synchronously

import '../../droidcon_exporter.dart';

// * User service
final userServiceProvider = Provider<UserService>((ref) {
  return UserService(ref);
});

class UserService {
  // context needed to show toasts for erros or success
  // final BuildContext context;

  final Ref ref;

  UserService(this.ref);

  //* sign up user
  Future<void> signUp({required SignUpCredentials signUpCredentials}) async {
    // credentials
    Map<String, dynamic> credentials = signUpCredentials.asMap;

    printer(credentials);

    return futureCallSimulator();
  }

// * log in user (login)
  Future<void> login({required LoginCredentials loginCredentials}) async {
    // credentials
    Map<String, dynamic> credentials = loginCredentials.asMap;

    printer(credentials);

    return futureCallSimulator();
  }

// * log out the user
  Future<void> logout() async {
    // TODO go back to splash screen
    // ref.read(goRouterProvider).go(splashPath);
  }
}
