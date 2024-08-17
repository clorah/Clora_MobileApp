import 'package:clora/appointment/appointmentscreenone.dart';
import 'package:clora/appointment/appointmentscreenthree.dart';
import 'package:clora/appointment/appointmentscreentwo.dart';
import 'package:clora/homescreen/doctor_location.dart';
import 'package:clora/homescreen/doctor_profile.dart';
import 'package:clora/homescreen/doctors_category.dart';
import 'package:clora/homescreen/doctors_specification.dart';
import 'package:clora/homescreen/google_map.dart';
import 'package:clora/homescreen/homescreenone.dart';
import 'package:clora/homescreen/mainhomescreenone.dart';
import 'package:clora/login/get_started.dart';
import 'package:clora/medicalrecord/medicalrecord.dart';
import 'package:clora/medicalrecord/medicalrecordthree.dart';
import 'package:clora/medicalrecord/medicalrecordtwo.dart';
import 'package:clora/messages/messages.dart';
import 'package:clora/messages/messagesone.dart';
import 'package:clora/messages/messagestwo.dart';
import 'package:clora/notification/notification.dart';
import 'package:clora/notification/notificationthree.dart';
import 'package:clora/services/mis.dart';
import 'package:clora/splashscreen/spalsh_screen-four.dart';
import 'package:clora/splashscreen/spalsh_screen_five.dart';
import 'package:clora/splashscreen/spalsh_screen_three.dart';
import 'package:clora/splashscreen/splash_screen_one.dart';
import 'package:clora/splashscreen/splash_screen_two.dart';
import 'package:clora/state_management_provider/fetch.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class routeManager {
  static const String homePageOne = '/';
  static const String slapshScreenOne = '/splashScreenOne';
  static const String slapshScreenTwo = '/splashScreenTwo';
  static const String spalshScreenThree = '/splashScreenThree';
  static const String splashScreenFour = '/splashScreenFour';
  static const String splashScreenFive = '/splashScreenFive';
  static const String getStarted = '/getStarted';
  static const String doctorCategories = '/doctorCategories';
  static const String mainHomeScreenOne = '/mainHomeScreenOne';
  static const String doctorsSpecification = '/doctorsSpecfication';
  static const String doctorProfile = '/doctorProfile';
  static const String doctorLocation = '/doctorLocation';
  static const String appointmentScreenOne = '/appointmentScreenOne';
  static const String appointmentScreenTwo = '/appointmentScreenTwo';
  static const String messageOne = '/messageOne';
   static const String messageTwo = '/messageTwo';
  static Route<dynamic> routeSettings(RouteSettings settings) {
    var valuePassed;
    if (settings.arguments != null) {
      valuePassed = settings.arguments as Map<String, dynamic>;
    }
    switch (settings.name) {
      case homePageOne:
        return MaterialPageRoute(
            builder: ((context) => const mainhomescreenone()));
      case slapshScreenOne:
        return MaterialPageRoute(
            builder: ((context) => const splash_screen_one()));
      case slapshScreenTwo:
        return MaterialPageRoute(
            builder: ((context) => const splash_screen_two()));
      case spalshScreenThree:
        return MaterialPageRoute(
            builder: ((context) => const splash_screen_three()));
      case splashScreenFour:
        return MaterialPageRoute(
            builder: ((context) => const splash_screen_four()));
      case splashScreenFive:
        return MaterialPageRoute(
            builder: ((context) => const splash_screen_five()));
      case getStarted:
        return MaterialPageRoute(builder: ((context) => const get_started()));
      case doctorCategories:
        return MaterialPageRoute(builder: ((context) => const doctors()));
      case mainHomeScreenOne:
        return MaterialPageRoute(builder: ((context) => const homeScreenOne()));
      case doctorProfile:
        return MaterialPageRoute(
            builder: ((context) => const dcotor_profile()));
      case doctorLocation:
        return MaterialPageRoute(
            builder: ((context) => const doctor_location()));
      case doctorsSpecification:
        return MaterialPageRoute(
            builder: ((context) =>
                doctors_specification(name: valuePassed['name'])));
      case appointmentScreenOne:
        return MaterialPageRoute(
            builder: ((context) => const appointmentscreenone()));
      case appointmentScreenTwo:
        return MaterialPageRoute(
            builder: ((context) => const appointmentscreentwo()));
             case messageOne:
        return MaterialPageRoute(
            builder: ((context) => const messagesOne()));
             case messageTwo:
        return MaterialPageRoute(
            builder: ((context) => const messagesTwo()));

      default:
        throw const FormatException('no route found');
    }
  }
}
