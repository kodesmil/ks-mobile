class Endpoints {
  Endpoints._();

  // base url
  static const String baseUrl = "https://kodesmil.com";
  static const String authUrl = "https://auth.kodesmil.com";

  // receiveTimeout
  static const int receiveTimeout = 5000;

  // connectTimeout
  static const int connectionTimeout = 3000;

  // booking endpoints
  static const String getPosts = baseUrl + "/posts";

  // auth endpoints
  static const String getAuthToken = authUrl + "/oxauth/restv1/token";

  // scim endpoints
  static const String getScimUser = authUrl + "/identity/restv1/scim/v2/Users";
}