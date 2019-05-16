class AuthContext {
  Config config;

  AuthContext(this.config);
}

class Config {
  String tenantID;
  String clientID;
  String redirectUrl;
  String cacheLocation;

  Config(this.tenantID, this.clientID, this.redirectUrl, this.cacheLocation);
}