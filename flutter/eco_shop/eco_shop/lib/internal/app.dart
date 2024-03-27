import 'package:eco_shop/core/config/routes/app_router.dart';
import 'package:eco_shop/core/config/settings/dio_settings/dio_settings.dart';
import 'package:eco_shop/core/config/themes/app_colors.dart';
import 'package:eco_shop/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:eco_shop/features/auth/data/repositories/register_impl.dart';
import 'package:eco_shop/features/auth/domain/usecases/register_usecase.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../features/auth/presentation/bloc/auth_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => DioSettings(),
        ),
        RepositoryProvider(
          create: (context) => RegisterRepUseCase(
              dio: RepositoryProvider.of<DioSettings>(context).dio,),
        ),
        RepositoryProvider(
          create: (context) => AuthImplentation(
              useCase: RepositoryProvider.of<RegisterRepUseCase>(context)),
        ),
      ],
      child: BlocProvider(
        create: (context) => RegisterBloc(
            repository: RepositoryProvider.of<AuthImplentation>(context)),
        child: MaterialApp.router(
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
              useMaterial3: false,
              appBarTheme: const AppBarTheme(
                  backgroundColor: AppColors.textFieldColor, elevation: 0)),
          routerConfig: AppRouter().config(),
        ),
      ),
    );
  }
}
