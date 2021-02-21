import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:animations/animations.dart';

import 'package:mobile_app_sample/ui/views/home/home_viewmodel.dart';
import 'package:mobile_app_sample/ui/views/posts/posts_view.dart';
import 'package:mobile_app_sample/ui/views/services/services_view.dart';
import 'package:mobile_app_sample/ui/views/user/user_view.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      builder: (context, model, child) => Scaffold(
        body: PageTransitionSwitcher(
          duration: const Duration(milliseconds: 300),
          reverse: model.reverse,
          transitionBuilder: (
            Widget child,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return SharedAxisTransition(
              child: child,
              animation: animation,
              secondaryAnimation: secondaryAnimation,
              transitionType: SharedAxisTransitionType.horizontal,
            );
          },
          child: getViewForIndex(model.currentIndex),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          currentIndex: model.currentIndex,
          onTap: model.setIndex,
          items: [
            BottomNavigationBarItem(
              label: "Posts",
              icon: Icon(Icons.web),
            ),
            BottomNavigationBarItem(
              label: "Services",
              icon: Icon(Icons.widgets),
            ),
            BottomNavigationBarItem(
              label: "User",
              icon: Icon(Icons.account_circle),
            )
          ],
        ),
      ),
      viewModelBuilder: () => HomeViewModel(),
    );
  }

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return PostsView();
      case 1:
        return ServicesView();
      default:
        return UserView();
    }
  }
}
