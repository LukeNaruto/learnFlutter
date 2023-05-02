import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
// import '01_basic/01_Hello.dart';
// import '01_basic/02_Text.dart';

// import '02_layout/01_Container.dart';
// import '02_layout/02_Column_Row.dart';
// import '02_layout/03_Flex.dart';
// import '02_layout/04_Wrap.dart';
// import '02_layout/05_Stack.dart';
// import '02_layout/06_Cart.dart';
// import '03_Button/01_Button.dart';
// import '04_Image/01_Image.dart';
// import '05_List/01_SingleChildView.dart';
// import '05_List/02_ListView.dart';
// import '05_List/03_GridView.dart';
// import '05_List/04_gridView.dart';
// import '06_others/01_Cupertino.dart';
// import '07_third-party/01_dio.dart';
// import '07_third-party/02_flutter_swiper.dart';
// import '07_third-party/03_shared_preferences.dart';
// import '08_State/01_StatefulWidget.dart';
// import '08_State/02_Data_Table.dart';
// import '08_State/03_inheritedWidget.dart';
// import '08_State/04_Lifecycle.dart';
// import '08_State/05_provider.dart';
// import '09_navigation/01_anonymous.dart';

// import '09_navigation/02_namedRoute.dart';

// import '09_navigation/03_onGenerateRoute.dart';
// import '09_navigation/05_drawer.dart';
// import '09_navigation/06_BottomNavigatorBar.dart';
// import '09_navigation/07_Tab.dart';
// import '10_form/01_switch.dart';
// import '10_form/02_checkbox.dart';
// import '10_form/03_radio.dart';
// import '10_form/04_textfiled.dart';
// import '10_form/05_Form.dart';
// import '10_form/06_from.dart';
// import '11_animation/01_Animation.dart';
// import '11_animation/02_StaggerAmimation.dart';
// import '11_animation/03_HeroAnimation.dart';

import '12_i18n/01_Texti18n.dart';
import '12_i18n/app_localizations.dart';

// import '13_theme/01_theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo-1',
      home: Home(),
      // 声明路由
      /* routes: {
        'home': (context) => Home(),
        'product': (context) => Product(),
      },
      initialRoute: 'home',
      onUnknownRoute: (RouteSettings setting) => MaterialPageRoute(builder: (context) => UnknowPage()),
      onGenerateRoute: (RouteSettings setting) {
        print('当前路径：${setting.name}' );
        if(setting.name == '/') {
          return MaterialPageRoute(builder: (context) => Home());
        } 
        if(setting.name == 'product'){
          return MaterialPageRoute(builder: (context) => Product());
        }
        var uri = Uri.parse(setting.name!);
        print(uri.pathSegments);
        if(uri.pathSegments.length == 2 && uri.pathSegments.first  == 'product'){
          var id = uri.pathSegments[1];
          return MaterialPageRoute(builder: (context) => ProductDetail(id: id));
        }

        return MaterialPageRoute(builder: (context) => UnknowPage());
      }, */
      // 13 theme
      // theme: ThemeData(fontFamily: 'ZCOOLXiaoWei-Regular'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: TextTheme(
          headline1: TextStyle(fontSize: 72.0, fontWeight: FontWeight.bold),
          headline6: TextStyle(fontSize: 36.0, fontStyle: FontStyle.italic),
          bodyText2: TextStyle(fontSize: 14.0, fontFamily: 'Hind'),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.blue,
          textTheme: ButtonTextTheme.primary,
        ),
        iconTheme: IconThemeData(
          color: Colors.blue,
          size: 24,
        ),
        cardTheme: CardTheme(
          color: Colors.blue.shade100,
          elevation: 5,
        ),
      ),
      // theme: ThemeData.light(),
      // darkTheme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate

      ],
      supportedLocales: [
        const Locale('en', 'US'),
        const Locale('zh', 'CN')
      ]
    );
  }
}
