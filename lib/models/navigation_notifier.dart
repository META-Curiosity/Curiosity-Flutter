import 'package:hooks_riverpod/hooks_riverpod.dart';

enum NavigationBarEvent { today, mindful, more }

class NavigationNotifier extends StateNotifier<PageModel> {
  NavigationNotifier() : super(defaultPage);

  static const defaultPage = PageModel(NavigationBarEvent.today);

  void selectPage(int i) {
    switch (i) {
      case 0:
        state = const PageModel(NavigationBarEvent.today);
        break;
      case 1:
        state = const PageModel(NavigationBarEvent.mindful);
        break;
      case 2:
        state = const PageModel(NavigationBarEvent.more);
        break;
    }
  }
}

class PageModel {
  const PageModel(this.page);
  final NavigationBarEvent page;
}
