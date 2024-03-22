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
    titleTextStyle: TextStyle(
      fontFamily: 'Nunito Sans',
      color: Colors.black,
      fontSize: 18,
      fontWeight: FontWeight.w700
    ),
    centerTitle: true,
    elevation: 0,
  );
}

