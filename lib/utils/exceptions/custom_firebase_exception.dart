class CustomFirebaseException implements Exception {
  final String error;

  CustomFirebaseException(this.error);

  String get message {
    switch (error) {
      case 'invalid-email':
        return 'The email address is badly formatted.';
      case 'user-not-found':
        return 'There is no user corresponding to the given email address.';
      case 'wrong-password':
        return 'The password is invalid.';
      case 'email-already-in-use':
        return 'The email address is already in use by another account.';
      case 'weak-password':
        return 'The password must be at least 6 characters long.';
      case 'user-disabled':
        return 'The user corresponding to the given email has been disabled.';
      case 'too-many-requests':
        return 'Too many unsuccessful login attempts. Please try again later.';
      case 'operation-not-allowed':
        return 'Email/password accounts are not enabled.';
      case 'network-request-failed':
        return 'Please check your internet connection and try again.';
      case 'invalid-verification-code':
        return 'The verification code is invalid.';
      case 'expired-action-code':
        return 'The action code has expired.';
      case 'invalid-action-code':
        return 'The action code is invalid.';
      case 'invalid-credential':
        return 'The credential is malformed or has expired.';
      case 'account-exists-with-different-credential':
        return 'An account already exists with the same email address but different sign-in credentials.';
      case 'requires-recent-login':
        return 'This operation is sensitive and requires recent authentication. Log in again before retrying this request.';
      case 'user-mismatch':
        return 'The supplied credentials do not correspond to the previously signed in user.';
      case 'provider-already-linked':
        return 'This credential is already associated with a different user account.';
      case 'credential-already-in-use':
        return 'This credential is already associated with a user account.';
      case 'invalid-verification-id':
        return 'The verification ID used to create the phone auth credential is invalid.';
      case 'missing-verification-id':
        return 'The verification ID is missing.';
      case 'missing-verification-code':
        return 'The verification code is missing.';
      case 'example-exception':
        return 'This is an example exception.';
      case 'another-exception':
        return 'This is another exception.';
      // Add more cases for other Firebase exceptions here
      case 'custom-exception-1':
        return 'This is a custom exception 1.';
      case 'custom-exception-2':
        return 'This is a custom exception 2.';
      case 'custom-exception-3':
        return 'This is a custom exception 3.';
      default:
        return 'An unexpected firebase error occurred.';
    }
  }
}