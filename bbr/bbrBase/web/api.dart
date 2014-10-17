library api;

import 'dart:convert';
import 'package:angular/angular.dart';
import 'dart:html';

class Api{
  static final String SEND_MESSAGE_URL = 'http://bouvet-code-camp.azurewebsites.net/api/game/base/sendpifmelding';
  static final String GET_REGISTERED_CODES_URL = 'http://bouvet-code-camp.azurewebsites.net/api/game/base/hentregistrertekoder/{2cedfbe}';
  static final String GET_PIF_POS_URL = 'http://bouvet-code-camp.azurewebsites.net/api/game/base/hentpifposisjon/{2cedfbe}';
  static final String GET_CURRENT_POST_URL = 'http://bouvet-code-camp.azurewebsites.net/api/game/base/hentgjeldendepost/{2cedfbe}';
  static final String LAG_ID = "2cedfbe";
  
  //Http _http;
  
  String getPifPos() {
    String post = HttpRequest.getString(GET_PIF_POS_URL).toString();
    return post;
  }
  
  static String getPost() {
    String post = HttpRequest.getString(GET_REGISTERED_CODES_URL).toString();
    return post;
  }
  
  static void sendHimmelretning(String retning){
    Http _http;
    Map data = {
                "Type" : "Himmelretning",
                "Innhold" : retning,
                "LagId" : LAG_ID
            };
    HttpRequest.postFormData(SEND_MESSAGE_URL, data);
  }

  static void sendDistanse(num dist){
    Http _http;
     Map data = {
                 "Type" : "Lengde",
                 "Innhold" : dist.toInt().toString(),
                 "LagId" : LAG_ID
             };
     HttpRequest.postFormData(SEND_MESSAGE_URL, data);
  }

  static void sendStopp(bool stopp){
    Http _http;
    Map data = {
                "Type" : "Stopp",
                "Innhold" : stopp.toString(),
                "LagId" : LAG_ID
            };
    HttpRequest.postFormData(SEND_MESSAGE_URL, data);
  }

}