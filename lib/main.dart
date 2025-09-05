import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lightpay/data/provider/repository/Basedauthenticationrepository.dart';
import 'package:lightpay/data/provider/repository/historyRepository.dart';
import 'package:lightpay/data/provider/repository/rechargerepository.dart';
import 'package:lightpay/data/provider/repository/transactionrepository.dart';
import 'package:lightpay/data/provider/repository/usermanagementrepository.dart';
import 'package:lightpay/data/provider/server/authenticationserverservice.dart';
import 'package:lightpay/data/provider/server/historyserverservice.dart';
import 'package:lightpay/data/provider/server/rechargeserverservice.dart';
import 'package:lightpay/data/provider/server/transactionserverservices.dart';
import 'package:lightpay/data/provider/server/usermanagerserverservice.dart';
import 'package:lightpay/data/store/themedatastore.dart';
import 'package:lightpay/logic/bloc/authbloc/Auth/Auth_bloc.dart';
import 'package:lightpay/logic/bloc/historybloc/History/History_bloc.dart';
import 'package:lightpay/logic/bloc/rechargebloc/Recharge/Recharge_bloc.dart';
import 'package:lightpay/logic/bloc/themebloc/Theme/Theme_bloc.dart';
import 'package:lightpay/logic/bloc/transactionbloc/Transaction/Transaction_bloc.dart';
import 'package:lightpay/logic/bloc/usermanagementbloc/Usermanagement/Usermanagement_bloc.dart';
import 'package:lightpay/presentation/screens/loginscreen.dart';
import 'package:lightpay/presentation/theme/themedata.dart';
import 'package:lightpay/routers/route.dart';
// import 'package:lightpay/routers/route.dart';

import 'logic/blocobserver/blocobserver.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  Bloc.observer = MyBlocObserver();
  final bool islightmode =
      await Storethemedata().getbool('islightmode') ?? true;
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]).then((
    _,
  ) {
    runApp(MyApp(islightmode: islightmode));
  });
}

class MyApp extends StatelessWidget {
  final bool islightmode;
  const MyApp({required this.islightmode, super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create:
              (context) => AuthenticationRepository(
                authenticationServerservice: AuthenticationServerservice(),
              ),
        ),
        RepositoryProvider(
          create:
              (context) => TransactionRepository(
                transactionServerServices: TransactionServerServices(),
              ),
        ),
        RepositoryProvider(
          create:
              (context) => RechargeRepository(
                rechargeServerService: RechargeServerService(),
              ),
        ),
        RepositoryProvider(
          create:
              (context) => HistoryRepository(
                historyServerService: HistoryServerService(),
              ),
        ),
        RepositoryProvider(
          create:
              (context) => UserManagementRepository(
                userManagerServerService: UserManagerServerService(),
              ),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create:
                (context) => AuthBloc(
                  authenticationRepository: AuthenticationRepository(
                    authenticationServerservice: AuthenticationServerservice(),
                  ),
                ),
          ),
          BlocProvider(
            create:
                (context) => TransactionBloc(
                  transactionrepository: TransactionRepository(
                    transactionServerServices: TransactionServerServices(),
                  ),
                ),
          ),
          BlocProvider(
            create:
                (context) => RechargeBloc(
                  rechargeRepository: RechargeRepository(
                    rechargeServerService: RechargeServerService(),
                  ),
                ),
          ),
          BlocProvider(
            create:
                (context) => HistoryBloc(
                  historyRepository: HistoryRepository(
                    historyServerService: HistoryServerService(),
                  ),
                ),
          ),
          BlocProvider(
            create:
                (context) => UsermanagementBloc(
                  userManagementRepository: UserManagementRepository(
                    userManagerServerService: UserManagerServerService(),
                  ),
                ),
          ),
          // BlocProvider(create: (context) => InternetBloc()),
          BlocProvider( create: (context) => ThemeBloc(isLightMode: islightmode),  ),
        ],
        child: BlocBuilder<ThemeBloc, ThemeState>(
          builder: (context, state) {
             ThemeData currentTheme = islightmode ? lightmode : darkmode; 
             if(state is ChangingAppModeSuccessfully){
              currentTheme = state.themeData;
             }
            return MaterialApp(
              title: 'LightPay',
              debugShowCheckedModeBanner: false,
              theme:currentTheme,
              onGenerateRoute: AppRoute.generateRoute,
              home: const LoginScreen(),
            );
          },
        ),
      ),
    );
  }
}
