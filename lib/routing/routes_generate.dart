part of routing_module;

class RoutsGenerate {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final Object? args = settings.arguments;

    switch (settings.name) {
      case RouteNames.forgetPasswordScreen:
        return MaterialPageRoute(builder: (_) => ForgetPasswordScreen());
      case RouteNames.verifyEmailScreen:
        return MaterialPageRoute(builder: (_) => VerifyEmailScreen());
      case RouteNames.resetPasswordScreen:
        return MaterialPageRoute(builder: (_) => ResetPasswordScreen());
      case RouteNames.mainAuthScreen:
        return MaterialPageRoute(builder: (_) => const MainAuthScreen());
      case RouteNames.mainAddPetScreen:
        return MaterialPageRoute(builder: (_) => const MainAppPetScreen());
      case RouteNames.productDetailsScreen:
        return MaterialPageRoute(builder: (_) => const ProductDetailsScreen());
      case RouteNames.cartScreen:
        return MaterialPageRoute(builder: (_) => const CartScreen());
      case RouteNames.orderInformationScreen:
        return MaterialPageRoute(
            builder: (_) => ChangeNotifierProvider.value(
                value: sl<OrderInformationProvide>(),
                child: const OrderInformationScreen()));
      case RouteNames.addNewCardScreen:
        return MaterialPageRoute(
            builder: (_) => ChangeNotifierProvider.value(
                value: sl<CardProvider>(), child: const AddNewCard()));
      case RouteNames.orderSuccess:
        return MaterialPageRoute(builder: (_) => const OrderSuccess());
      case RouteNames.editProfileScreen:
        return MaterialPageRoute(builder: (_) => const EditProfileScreen());
      case RouteNames.paymentMethodScreen:
        return MaterialPageRoute(builder: (_) => PaymentMethodsScreen());
      case RouteNames.addressScreen:
        return MaterialPageRoute(builder: (_) => AddressScreen());
      case RouteNames.ordersScreen:
        return MaterialPageRoute(builder: (_) => OrdersScreen());
      case RouteNames.appointmentsScreen:
        return MaterialPageRoute(builder: (_) => const AppointmentsScreen());
      case RouteNames.addNewPaymentMethodScreen:
        return MaterialPageRoute(builder: (_) => AddNewPaymentMethodScreen());
      case RouteNames.orderDetailScreen:
        return MaterialPageRoute(builder: (_) => const OrderDetailScreen());
      case RouteNames.mainShopScreen:
        return MaterialPageRoute(builder: (_) => const MainShopScreen());
      case RouteNames.allPetShopScreen:
        return MaterialPageRoute(
            builder: (_) => ChangeNotifierProvider(
                  create: (context) => HomeProvider(),
                  child: ChangeNotifierProvider.value(
                      value: sl<ProductProvider>(),
                      child: const AllPetProducts()),
                ));

      case RouteNames.allVetsDoctorScreen:
        return MaterialPageRoute(
            builder: (_) => ChangeNotifierProvider.value(
                  value: sl<HomeProvider>(),
                  child: const AllVetsDoctor(),
                ));
      case RouteNames.addNewLocationManual:
        return MaterialPageRoute(
          builder: (_) => ChangeNotifierProvider.value(
            value: sl<AddressProvider>(),
            child: const AddNewAddressManually(),
          ),
        );
      case RouteNames.addReminderScreen:
        return MaterialPageRoute(builder: (_) => const AddReminderScreen());
      case RouteNames.mainScreenApp:
        return MaterialPageRoute(builder: (_) => const MainScreenApp());

      case RouteNames.searchScreen:
        return MaterialPageRoute(
          builder: (_) {
            return ChangeNotifierProvider.value(
              value: sl<HomeProvider>(),
              child: ChangeNotifierProvider.value(
                value: sl<SearchProvider>(),
                child: const SearchScreen(),
              ),
            );
          },
        );

      case RouteNames.homeScreen:
        return MaterialPageRoute(
          builder: (_) {
            return ChangeNotifierProvider.value(
              value: sl<HomeProvider>(),
              child: const HomeScreen(),
            );
          },
        );

      case RouteNames.splashScreen:
        return MaterialPageRoute(
          builder: (_) {
            return const SplashScreen();
          },
        );

      case RouteNames.loginScreen:
        return MaterialPageRoute(
          builder: (_) {
            return LoginScreen();
          },
        );
      case RouteNames.reminderScreen:
        return MaterialPageRoute(builder: (_) => ReminderScreen());
      case RouteNames.successAddPatScreen:
        return MaterialPageRoute(builder: (_) => const SuccessAddPatScreen());
      case RouteNames.editPetInfo:
        return MaterialPageRoute(builder: (_) {
          return const EditPetInfo();
        });
      case RouteNames.findArticle:
        return MaterialPageRoute(
            builder: (_) {
              initArticle();
              return ChangeNotifierProvider.value(
                value: sl<ArticleController>(), child: const FindArticle());});
      case RouteNames.addNewLocation:
        return MaterialPageRoute(builder: (_) => AddNewAddressScreen());
      case RouteNames.findVet:
        return MaterialPageRoute(builder: (_) {
          initVets();
          return const VetsScreen();
        });
      case RouteNames.vetDetailsScreen:
        if (args is MainVetsModel) {
          MaterialPageRoute(builder: (_) => VetDetails(vet: args));
        }
        return _errorRoute();
      default:
        throw const FormatException("Route not found");
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(title: const Text('Error')),
        body: const Center(child: Text('Page not found')),
      );
    });
  }
}
