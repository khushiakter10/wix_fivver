//
//
//
// import 'package:rxdart/rxdart.dart';
// import 'package:shotter_app/features/add_event/data/rx_add_event/rx.dart';
// import 'package:shotter_app/features/authentication/change_password/data/rx_new_password/rx.dart';
// import 'package:shotter_app/features/authentication/change_password/model/new_password_response_model.dart';
// import 'package:shotter_app/features/authentication/forgot_password/data/rx_reset_password/rx.dart';
// import 'package:shotter_app/features/authentication/forgot_password/model/forgot_password_response_model.dart';
// import 'package:shotter_app/features/authentication/otp_verification/data/rx_verify_otp/rx.dart';
// import 'package:shotter_app/features/authentication/otp_verification/model/otp_response_model.dart';
// import 'package:shotter_app/features/authentication/sign_in/data/rx_login/rx.dart';
// import 'package:shotter_app/features/authentication/sign_in/model/login_reponse_model.dart';
// import 'package:shotter_app/features/authentication/sign_up/data/rx_signup/rx.dart';
// import 'package:shotter_app/features/authentication/sign_up/model/signup_response_model.dart';
// import 'package:shotter_app/features/category_event/data/rx_get_category_events/rx.dart';
// import 'package:shotter_app/features/discover_event/data/rx_get_all_events/rx.dart';
// import 'package:shotter_app/features/discover_event/model/filter_event_response_model.dart';
// import 'package:shotter_app/features/event_details/data/rx_get_my_events/rx.dart';
// import 'package:shotter_app/features/event_details/data/rx_get_related_event/rx.dart';
// import 'package:shotter_app/features/event_details/model/event_details_response_model.dart';
// import 'package:shotter_app/features/event_details/model/related_event_response_model.dart';
// import 'package:shotter_app/features/home/data/rx_get_currency/rx.dart';
// import 'package:shotter_app/features/home/data/rx_get_games/rx.dart';
// import 'package:shotter_app/features/home/model/currency_response_model.dart';
// import 'package:shotter_app/features/home/model/game_response_model.dart';
// import 'package:shotter_app/features/my_event/data/rx_get_my_events/rx.dart';
// import 'package:shotter_app/features/my_event/model/my_event_response_model.dart';
// import 'package:shotter_app/features/profile/data/rx_get_profile/rx.dart';
// import 'package:shotter_app/features/profile/data/rx_logout/rx.dart';
// import 'package:shotter_app/features/profile/data/rx_update_profile/rx.dart';
// import 'package:shotter_app/features/profile/model/profile_response_model.dart';
// import 'package:shotter_app/features/search/data/rx_get_search_events/rx.dart';
// import 'package:shotter_app/features/search/model/search_response_model.dart';
//
// GetLoginResponseRX getLoginRXObj = GetLoginResponseRX(
//     empty: LoginResponseModel(), dataFetcher: BehaviorSubject<LoginResponseModel>());
//
// GetAllGamesRX getAllGamesRXOBJ = GetAllGamesRX(
//     empty: GamesResponseModel(), dataFetcher: BehaviorSubject<GamesResponseModel>());
//
// GetAllEventRX getAllEventRXOBJ = GetAllEventRX(
//     empty: FilterEventResponseModel(), dataFetcher: BehaviorSubject<FilterEventResponseModel>());
//
// GetCategoryEventRX getCategoryEventRXOBJ = GetCategoryEventRX(
//     empty: FilterEventResponseModel(), dataFetcher: BehaviorSubject<FilterEventResponseModel>());
//
// GetProfileRX getProfileRXOBJ = GetProfileRX(
//     empty: ProfileResponseModel(), dataFetcher: BehaviorSubject<ProfileResponseModel>());
//
// GetSignUpResponseRX getSignUpResponseRXOBJ = GetSignUpResponseRX(
//     empty: SignUpResponseModel(), dataFetcher: BehaviorSubject<SignUpResponseModel>());
//
// GetCurrencyRX getCurrencyRXOBJ = GetCurrencyRX(
//     empty: CurrencyResponseModel(), dataFetcher: BehaviorSubject<CurrencyResponseModel>());
//
// GetMyEventRX getMyEventRXOBJ = GetMyEventRX(
//     empty: MyEventResponseModel(), dataFetcher: BehaviorSubject<MyEventResponseModel>());
//
// GetSingleEventRX getSingleEventRXOBJ = GetSingleEventRX(
//     empty: EventDetailsResponseModel(), dataFetcher: BehaviorSubject<EventDetailsResponseModel>());
//
// GetRelatedEventRX getRelatedEventRXOBJ = GetRelatedEventRX(
//     empty: RelatedEventResponseModel(), dataFetcher: BehaviorSubject<RelatedEventResponseModel>());
//
// GetSearchEventRX getSearchEventRXOBJ = GetSearchEventRX(
//     empty: SearchResponseModel(), dataFetcher: BehaviorSubject<SearchResponseModel>());
//
// GetForgotPasswordResponseRX forgotPasswordResponseRXOBJ = GetForgotPasswordResponseRX(
//     empty: ForgotPasswordResponseModel(), dataFetcher: BehaviorSubject<ForgotPasswordResponseModel>());
//
// GetVerifyOtpRX getVerifyOtpRXOBJ = GetVerifyOtpRX(
//     empty: OtpResponseModel(), dataFetcher: BehaviorSubject<OtpResponseModel>());
//
// GetNewPassowrdRX getNewPassowrdRXOBJ = GetNewPassowrdRX(
//     empty: NewPasswordResponseModel(), dataFetcher: BehaviorSubject<NewPasswordResponseModel>());
//
// UpdateProfileRX updateProfileRXOBJ = UpdateProfileRX(
//     empty: {}, dataFetcher: BehaviorSubject<Map>());
//
// LogOutRX logOutRXOBJ = LogOutRX(
//     empty: {}, dataFetcher: BehaviorSubject<Map>());
//
// AddEventRX addEventRXOBJ = AddEventRX(
//     empty: {}, dataFetcher: BehaviorSubject<Map>());
