class Endpoints {
  Endpoints._();

  // base url
  static const String baseUrl = "https://kodesmil.com";
  static const String authUrl = "https://auth.kodesmil.com";
  static const String seedUrl = "https://auth.kodesmil.com";

  // receiveTimeout
  static const int receiveTimeout = 50000;

  // connectTimeout
  static const int connectionTimeout = 30000;

  // booking endpoints
  static const String getPosts = "$baseUrl/posts";

  // auth endpoints
  static const String getAuthToken = "$authUrl/oxauth/restv1/token";
  static const String getAuthAccessToken = "$seedUrl/oxauth/seam/"
      "resource/restv1/oxauth/token";

  // scim endpoints
  static const String getScimUser = "$authUrl/identity/restv1/scim/v2/Users";
}
