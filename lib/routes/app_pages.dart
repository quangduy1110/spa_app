import 'package:app_spa/modules/Login/bindings/login_bingdings.dart';
import 'package:app_spa/modules/Login/views/login_let_you_in.dart';
import 'package:app_spa/modules/Login/views/login_sign_in.dart';
import 'package:app_spa/modules/Login/views/login_sign_up.dart';
import 'package:app_spa/modules/accompanying_services/views/accompanying_services_views.dart';
import 'package:app_spa/modules/book_appointment/bindings/book_appointment_bingdings.dart';
import 'package:app_spa/modules/book_appointment/views/book_appointment_views.dart';
import 'package:app_spa/modules/cart_product/bindings/cart_product_bingdings.dart';
import 'package:app_spa/modules/cart_product/views/cart_product_view.dart';
import 'package:app_spa/modules/category_product/bindings/category_product_bingdings.dart';
import 'package:app_spa/modules/category_product/view/category_product_view.dart';
import 'package:app_spa/modules/category_service/bindings/category_bingdings.dart';
import 'package:app_spa/modules/category_service/views/detail_category_service_views.dart';
import 'package:app_spa/modules/detail_chat/bindings/detail_chat_bindings.dart';
import 'package:app_spa/modules/detail_chat/views/detail_chat_view.dart';
import 'package:app_spa/modules/detail_product/bindings/detail_product_bingdings.dart';
import 'package:app_spa/modules/detail_product/views/view_detail_product.dart';
import 'package:app_spa/modules/detail_service.dart/bindings/detail_service_bingdings.dart';
import 'package:app_spa/modules/detail_service.dart/views/detail_service_views.dart';
import 'package:app_spa/modules/edit_profile/bindings/edit_profile_bindings.dart';
import 'package:app_spa/modules/edit_profile/views/edit_profile_view.dart';
import 'package:app_spa/modules/home_page/bindings/home_page_bingdings.dart';
import 'package:app_spa/modules/booking/bindings/booking_bingdings.dart';
import 'package:app_spa/modules/chat/bindings/chat_bingdings.dart';
import 'package:app_spa/modules/home/bindings/home_bingdings.dart';
import 'package:app_spa/modules/home_page/views/home_page_views.dart';
import 'package:app_spa/modules/product/bindings/product_bingdings.dart';
import 'package:app_spa/modules/profile/bindings/profile_bingdings.dart';
import 'package:app_spa/modules/review_summary/bindings/review_summary_bingdings.dart';
import 'package:app_spa/modules/review_summary/views/review_summary_views.dart';
import 'package:app_spa/modules/welcome/views/welcome.dart';
import 'package:app_spa/modules/welcome/views/welcome_start.dart';
import 'package:get/get.dart';

part "app_routes.dart";

class AppPages {
  static const INITIAL = Routes.WECLOMESTART;
  static final routes = [
    GetPage(
      name: _Paths.WECLOMESTART,
      page: () => const WeclomeStart(),
    ),
    GetPage(
      name: _Paths.WECLOME,
      page: () => const Welcome(),
      transition: Transition.circularReveal,
      transitionDuration: const Duration(milliseconds: 2500),
    ),
    GetPage(
      name: _Paths.LOGINSIGNIN,
      page: () => const LoginSignIn(),
      binding: LoginBindings(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 600),
    ),
    GetPage(
      name: _Paths.LOGINSIGNUP,
      page: () => const LoginSignUp(),
      binding: LoginBindings(),
      transition: Transition.rightToLeftWithFade,
      transitionDuration: const Duration(milliseconds: 600),
    ),
    GetPage(
      name: _Paths.LOGINLEFSYOUIN,
      page: () => const LoginLefsYouIn(),
      transition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 1200),
    ),

    GetPage(
      name: _Paths.EDITPROFILE,
      page: () => const EditProfileView(),
      binding: EditProfileBindings(),
      transition: Transition.fade,
      transitionDuration: const Duration(milliseconds: 600),
    ),

    GetPage(
      name: _Paths.HOMEPAGE,
      page: () => const HomePageView(),
      bindings: [
        HomePageBindings(),
        BookingBindings(),
        ChatBindings(),
        HomeBinding(),
        Productbindings(),
        ProfileBindings(),
      ],
      transition: Transition.circularReveal,
      transitionDuration: const Duration(milliseconds: 1500),
    ),
    GetPage(
      name: _Paths.DETAILSERVICE,
      page: () => const DetailServiceView(),
      binding: DetailServiceBinding(),
      transition: Transition.circularReveal,
      transitionDuration: const Duration(milliseconds: 600),
    ),
    GetPage(
      name: _Paths.DETAILPRODUCT,
      page: () => const ViewDetailProduct(),
      binding: DetailProductBindings(),
      transition: Transition.circularReveal,
      transitionDuration: const Duration(milliseconds: 600),
    ),
    GetPage(
      name: _Paths.ACCOMPANYINGSERVICES,
      page: () => const AccompanyingServicesView(),
    ),
    GetPage(
      name: _Paths.BOOKAPPOINTMENT,
      page: () => const BookAppointmentView(),
      binding: BookAppointmentBindings(),
    ),
    GetPage(
      name: _Paths.REVIEWSUMMARY,
      page: () => const ReviewSummaryView(),
      binding: ReviewSummaryBindings(),
    ),
    GetPage(
      name: _Paths.DETAILCHAT,
      page: () => const DetailChatView(),
      binding: DetailChatBindings(),
    ),
    GetPage(
      name: _Paths.CATEGORYSERVICE,
      page: () => const CategoryServiceView(),
      binding: CategoryServiceBindings(),
    ),
    // GetPage(
    //   name: _Paths.OUTSTANDINGSERVICE,
    //   page: () => const OutstandingServiceView(),
    // ),

    GetPage(
      name: _Paths.CATEGORYPRODUCT,
      page: () => const CategoryProductView(),
      binding: CategoryProductBinding(),
    ),
    GetPage(
      name: _Paths.CARTPRODUCT,
      page: () => const CartProductView(),
      binding: CartProductbindings(),
    ),
  ];
}
