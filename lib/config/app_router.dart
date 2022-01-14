import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:food_delivey/screens/basket/basket_screen.dart';
import 'package:food_delivey/screens/checkout/checkout_screen.dart';
import 'package:food_delivey/screens/delivery_time/delivery_time_screen.dart';
import 'package:food_delivey/screens/filter/filter_screen.dart';
import 'package:food_delivey/screens/location/location_screen.dart';
import 'package:food_delivey/screens/home/home_screen.dart';
import 'package:food_delivey/screens/restaurant_details/restaurant_details_screen.dart';
import 'package:food_delivey/screens/restaurant_listing/restaurant_listing_screen.dart';
import 'package:food_delivey/screens/voucher/voucher_screen.dart';
class AppRouter{
  static Route onGeneralRoute(RouteSettings settings){
    print('The Route is ${settings.name}');
    switch(settings.name){
      case '/' :
        return HomeScreen.route();
      case HomeScreen.routeName:
        return HomeScreen.route();
      case LocationScreen.routeName:
        return LocationScreen.route();
      case BasketScreen.routeName:
        return BasketScreen.route();
      case CheckoutScreen.routeName:
        return CheckoutScreen.route();
      case DeliveryTimeScreen.routeName:
        return DeliveryTimeScreen.route();
      case FilterScreen.routeName:
        return FilterScreen.route();
      case RestaurantDetailsScreen.routeName:
        return RestaurantDetailsScreen.route();
      case RestaurantListingScreen.routeName:
        return RestaurantListingScreen.route();
      case VoucherScreen.routeName:
        return VoucherScreen.route();
        break;
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(appBar: AppBar(title: Text("Error"),),),
      settings: RouteSettings(name: '/error')
    );
  }
}