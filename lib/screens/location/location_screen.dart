import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_delivey/blocs/geolocation/geolocation_bloc.dart';
import 'package:food_delivey/widgets/gmap.dart';
import 'package:food_delivey/widgets/location_search_box.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:food_delivey/config/theme.dart';
class LocationScreen extends StatelessWidget{
  static const String routeName = '/location';
  static Route route() {
    return MaterialPageRoute(
      builder: (_) => LocationScreen(),
      settings: RouteSettings(name: routeName),
    );
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: BlocBuilder<GeolocationBloc, GeolocationState>(
              builder: (context, state) {
                if (state is GeolocationLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                }
                else if (state is GeolocationLoaded) {
                  return  Gmap(
                    lat: state.position.latitude,
                    lng: state.position.longitude,);
                }
                else {
                  return const Text("Something went wrong");

                }
              }
            ),
          ),
           Positioned(
             top: 30,
               left: 20 ,
               right: 20,
               child: Container(
                 height: 100,
                 child: Row(
                   children: [
                     SvgPicture.asset('assets/logo.svg', height: 50,),
                     SizedBox(width: 10,),
                     Expanded(child: LocationSearchBox()),
                   ],
                 ),
               ),
                   ),
               Positioned(
                   bottom: 30,
                   left: 20 ,
                   right: 20,
                   child: Padding(
                     padding: const EdgeInsets.symmetric(horizontal: 70.0),
                     child: ElevatedButton(
                       style: ElevatedButton.styleFrom(primary: theme().colorScheme.primary),
                       child: const Text('Save'),
                       onPressed: (){},
                     ),
                   )
                   )
        ],
      )
    );
  }
}

