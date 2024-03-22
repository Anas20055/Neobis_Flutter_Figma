part of '../../main.dart';
ThemeData _theme(){
  return ThemeData(
    fontFamily: 'Nunito Sans',
    appBarTheme: _appBarThem(),
    // textTheme: const TextTheme(bodyMedium: TextStyle(color: Colors.white,fontWeight: FontWeight.w100)
  );
}

AppBarTheme _appBarThem(){
  return const AppBarTheme(
    centerTitle: true,
    elevation: 0,
  );
}

