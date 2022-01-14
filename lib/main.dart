import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_delivey/blocs/geolocation/geolocation_bloc.dart';
import 'package:food_delivey/config/app_router.dart';
import 'package:food_delivey/repositories/geolocation/geolocation_repository.dart';
import 'package:food_delivey/screens/home/home_screen.dart';
import 'package:food_delivey/config/theme.dart';
import 'package:food_delivey/screens/location/location_screen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MultiRepositoryProvider(
        providers: [
          RepositoryProvider<GeolocationRepository>(
              create: (_) => GeolocationRepository(),
          )
        ],
        child: MultiBlocProvider(
          providers: [
            BlocProvider(
                create: (context) => GeolocationBloc(
                    geolocationRepository: context.read<GeolocationRepository>())
                      ..add(LoadGeolocation())
                    )
          ],
          child: MaterialApp(
      title: 'Food Delivery',
      theme: theme(),
      onGenerateRoute: AppRouter.onGeneralRoute,
      initialRoute: LocationScreen.routeName,
    ),
        ));
  }
}
