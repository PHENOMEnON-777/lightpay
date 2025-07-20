import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lightpay/data/provider/repository/Basedauthenticationrepository.dart';
import 'package:lightpay/data/provider/repository/transactionrepository.dart';
import 'package:lightpay/data/provider/server/authenticationRepository.dart';
import 'package:lightpay/data/provider/server/transactionserverservices.dart';
import 'package:lightpay/logic/bloc/authbloc/Auth/Auth_bloc.dart';
import 'package:lightpay/logic/bloc/transactionbloc/Transaction/Transaction_bloc.dart';
import 'package:lightpay/presentation/screens/loginscreen.dart';
import 'package:lightpay/routers/route.dart';
// import 'package:lightpay/routers/route.dart';

import 'logic/blocobserver/blocobserver.dart';

void main()async {
  // WidgetsFlutterBinding.ensureInitialized();

  // Fetch the stored theme mode
  // final bool islightmode =
      // await Storethemedata().getbool('islightmode') ?? true;
  Bloc.observer = MyBlocObserver();
  // SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((_) {
    runApp(MyApp());
  // });
 
}

class MyApp extends StatelessWidget {
  const MyApp({super.key,});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => AuthenticationRepository(authenticationServerservice: AuthenticationServerservice()),
           ),
           RepositoryProvider(create: (context)=> TransactionRepository(transactionServerServices: TransactionServerServices()))
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(authenticationRepository: AuthenticationRepository(authenticationServerservice: AuthenticationServerservice()))
          ),
       BlocProvider(create: (context)=>TransactionBloc(transactionrepository: TransactionRepository(transactionServerServices: TransactionServerServices())))
          // BlocProvider(create: (context) => InternetBloc()),
          // BlocProvider(create: (context) => ThemeBloc(isLightMode: islightmode)),
        ],
        child:  MaterialApp(
                title: 'LightPay',
                debugShowCheckedModeBanner: false,
                // theme:currentTheme,
                onGenerateRoute: AppRoute.generateRoute,
                home: const LoginScreen())
          
        
      )
    );
  }
}
