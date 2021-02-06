import 'package:hooks_riverpod/hooks_riverpod.dart';

enum NavigationBarEvent { TODAY, MINDFUL, MORE }

class NavigationNotifier extends StateNotifier<PageModel> {
  NavigationNotifier() : super(defaultPage);

  static const defaultPage = PageModel(NavigationBarEvent.TODAY);

  void selectPage(int i) {
    print("selected page $i");
    switch (i) {
      case 0:
        state = PageModel(NavigationBarEvent.TODAY);
        break;
      case 1:
        state = PageModel(NavigationBarEvent.MINDFUL);
        break;
      case 2:
        state = PageModel(NavigationBarEvent.MORE);
        break;
    }
  }
}

class PageModel {
  const PageModel(this.page);
  final NavigationBarEvent page;
}
