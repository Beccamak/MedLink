import 'package:link_up/presentation/sign_up_screen/sign_up_screen.dart';
import 'package:link_up/presentation/sign_up_screen/binding/sign_up_binding.dart';
import 'package:link_up/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:link_up/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:link_up/presentation/home_container_screen/home_container_screen.dart';
import 'package:link_up/presentation/home_container_screen/binding/home_container_binding.dart';
import 'package:link_up/presentation/register_screen/register_screen.dart';
import 'package:link_up/presentation/register_screen/binding/register_binding.dart';
import 'package:link_up/presentation/doctors_screen/doctors_screen.dart';
import 'package:link_up/presentation/doctors_screen/binding/doctors_binding.dart';
import 'package:link_up/presentation/hospital_profile_screen/hospital_profile_screen.dart';
import 'package:link_up/presentation/hospital_profile_screen/binding/hospital_profile_binding.dart';
import 'package:link_up/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:link_up/presentation/app_navigation_screen/binding/app_navigation_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String signUpScreen = '/sign_up_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String homePage = '/home_page';

  static const String homeContainerScreen = '/home_container_screen';

  static const String registerScreen = '/register_screen';

  static const String hospitalsPage = '/hospitals_page';

  static const String doctorsScreen = '/doctors_screen';

  static const String hospitalProfileScreen = '/hospital_profile_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: signUpScreen,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      bindings: [
        SignInBinding(),
      ],
    ),
    GetPage(
      name: homeContainerScreen,
      page: () => HomeContainerScreen(),
      bindings: [
        HomeContainerBinding(),
      ],
    ),
    GetPage(
      name: registerScreen,
      page: () => RegisterScreen(),
      bindings: [
        RegisterBinding(),
      ],
    ),
    GetPage(
      name: doctorsScreen,
      page: () => DoctorsScreen(),
      bindings: [
        DoctorsBinding(),
      ],
    ),
    GetPage(
      name: hospitalProfileScreen,
      page: () => HospitalProfileScreen(),
      bindings: [
        HospitalProfileBinding(),
      ],
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      bindings: [
        AppNavigationBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => SignUpScreen(),
      bindings: [
        SignUpBinding(),
      ],
    )
  ];
}
