class CustomFirebaseAuthException implements Exception {
  final String errorCode;

  CustomFirebaseAuthException(this.errorCode);

  String get message {
    switch (errorCode) {
      case 'invalid-email':
        return 'The email address is badly formatted.';
      case 'user-not-found':
        return 'There is no user corresponding to the given email address.';
      case 'wrong-password':
        return 'The password is invalid for the given email address.';
      case 'user-disabled':
        return 'The user corresponding to the given email has been disabled.';
      case 'too-many-requests':
        return 'Too many unsuccessful login attempts. Please try again later.';
      case 'operation-not-allowed':
        return 'Email/password accounts are not enabled.';
      default:
        return 'An unknown firebase auth error occurred.';
    }
  }
}
