abstract class AuthRepositoryInterface {
  Future<void> signInWithGoogle() async {
    throw UnimplementedError();
  }

  Future<void> signInWithFacebook() async {
    throw UnimplementedError();
  }

  Future<void> signInWithTwitter() async {
    throw UnimplementedError();
  }
}
