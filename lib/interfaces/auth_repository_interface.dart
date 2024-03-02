abstract class AuthRepositoryInterface {
  Future<void> signInWithGoogle();
  Future<void> signInWithFacebook();
  Future<void> signInWithTwitter();
}
