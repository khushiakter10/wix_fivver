// ignore_for_file: constant_identifier_names

// const String url = String.fromEnvironment("BASE_URL");
const String url = "https://backend.shooters-billiards-club.com";

final class NetworkConstants {
  NetworkConstants._();
  static const ACCEPT = "Accept";
  static const APP_KEY = "App-Key";
  static const ACCEPT_LANGUAGE = "Accept-Language";
  static const ACCEPT_LANGUAGE_VALUE = "pt";
  static const APP_KEY_VALUE = String.fromEnvironment("APP_KEY_VALUE");
  static const ACCEPT_TYPE = "application/json";
  static const AUTHORIZATION = "Authorization";
  static const CONTENT_TYPE = "content-Type";

}


final class Endpoints {
  Endpoints._();
  //backend_url
  static String logIn() => "/api/users/login";
  static String logOut() => "/api/users/logout";
  static String forgotPasswrd() => "/api/users/login/email-verify";
  static String verifyOtp() => "/api/users/login/otp-verify";
  static String newPassword() => "/api/users/login/reset-password";
  static String register() => "/api/users/register";
  static String profile() => "/api/users/data";
  static String updateProfile() => "/api/users/data/update";
  static String allGames() => "/api/games";
  static String currency() => "/api/currency";
  static String addEvent() => "/api/event/create";
  static String myEvent() => "/api/event/my";
  static String singleEvent({required int id}) => "/api/event/single/$id";
  static String relatedEvent({required int id}) => "/api/event/related/$id";
  static String filterEvents({String? time, String? gameId}) => "/api/event/filter?time=${time??""}&$gameId";
  static String searchEvents({String? location, String? date, String? title}) => "/api/event/search?location=$location&date=$date&title=$title";
  


}
