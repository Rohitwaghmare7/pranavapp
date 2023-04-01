import 'package:rohit_s_application8/presentation/iphone_13_pro_max_one_screen/iphone_13_pro_max_one_screen.dart';
import 'package:rohit_s_application8/presentation/iphone_13_pro_max_one_screen/binding/iphone_13_pro_max_one_binding.dart';
import 'package:get/get.dart';

class AppRoutes {
  static const String iphone13ProMaxOneScreen = '/iphone_13_pro_max_one_screen';

  static String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: iphone13ProMaxOneScreen,
      page: () => Iphone13ProMaxOneScreen(),
      bindings: [
        Iphone13ProMaxOneBinding(),
      ],
    ),
    GetPage(
      name: initialRoute,
      page: () => Iphone13ProMaxOneScreen(),
      bindings: [
        Iphone13ProMaxOneBinding(),
      ],
    )
  ];
}
