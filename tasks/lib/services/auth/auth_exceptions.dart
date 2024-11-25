//Login exceptions

class InvalidEmailLAuthException implements Exception {}

class InvalidCredentialsAuthException implements Exception {}

class MissingPasswordLAuthException implements Exception {}

//register exceptions

class InvalidEmailRAuthException implements Exception {}

class MissingPasswordRAuthException implements Exception {}

class WeakPasswordAuthException implements Exception {}

class EmailAlreadyInUseAuthException implements Exception {}

//generic exception

class GenericAuthException implements Exception {}

class UserNotLoggedInAuthException implements Exception {}
