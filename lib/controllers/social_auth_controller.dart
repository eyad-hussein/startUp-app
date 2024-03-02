import 'package:app/screens/repositories/auth_repository_Impl.dart';

class SocialAuthController {
  final SocialAuthController _repository;

  SocialAuthController(this._repository);

  Future<void> signInWithSocialMedia(String providerType) async {
    switch (providerType) {
      case 'google':
        await _repository.signInWithGoogle();
        break;
      case 'facebook':
        await _repository.signInWithFacebook();
        break;
      case 'twitter':
        await _repository.signInWithTwitter();
        break;
      default:
        throw Exception('Provider not supported');
    }
  }
}
