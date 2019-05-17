import 'package:url_launcher/url_launcher.dart';
import 'package:uuid/uuid.dart';
import 'package:uuid/uuid_util.dart';

class AuthContext {
  Config config;
  final String baseUrl = "https://login.microsoft.com/";
  final String adalClientVersion = "1.0.18";
  Uuid guid = new Uuid();

  AuthContext(this.config);
  
  /* privatize later, public for testing, BAD PRACTICE */
  String getReqUrl() {
    return "${baseUrl}${this.config.tenantID}/oauth2/authorize";
  }

  void login() {
    launch(getReqUrl());
  }

  /* privatize later, public for testing, BAD PRACTICE */
  String getReqString() {
    return "?response_type=${this.config.responseType}" +
      "&client_id=${this.config.clientID}" +
      "&redirect_uri=${this.config.redirectUrl}" +
      "&state=${guid.v4()}" +
      "&client-request-id=${guid.v4()}" +
      "&x-client-SKU=Js" +
      "&x-client-Ver=${this.adalClientVersion}" +
      "&nonce=${guid.v4()}";
  }
}

class Config {
  String tenantID;
  String clientID;
  String redirectUrl;
  String cacheLocation;

  String responseType = "id_token";

  Config(this.tenantID, 
    this.clientID, 
    this.redirectUrl, 
    this.cacheLocation, 
    this.responseType);
}