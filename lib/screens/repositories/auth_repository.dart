abstract class AuthRepository {
  Future<void> signInWithGoogle();
  Future<void> signInWithFacebook();
  Future<void> signInWithTwitter();
}
