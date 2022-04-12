import 'package:errand360/ui/main/home/home_view.dart';
import 'package:errand360/ui/main/main_view/main_view_model.dart';
import 'package:errand360/ui/widget/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:stacked/stacked.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<MainViewModel>.reactive(
        viewModelBuilder: () => MainViewModel(),
        builder: (_, model, ___) => Scaffold(
            body: getViewForIndex(model.currentIndex),
            bottomNavigationBar: SalomonBottomBar(
              currentIndex: model.currentIndex,
              onTap: model.setIndex,
              selectedItemColor: AppColors.primary,
              unselectedItemColor: AppColors.lightgray.withOpacity(0.5),
              items: [
                SalomonBottomBarItem(
                    icon: const Icon(Icons.home),
                    title: const Text("Home"),
                    unselectedColor: Colors.grey,
                    selectedColor: AppColors.primary),

                /// Likes
                SalomonBottomBarItem(
                    icon: const Icon(Icons.favorite_border),
                    title: const Text("Likes"),
                    selectedColor: AppColors.primary,
                    unselectedColor: Colors.grey),

                /// Search
                SalomonBottomBarItem(
                    icon: const Icon(Icons.search),
                    title: const Text("Search"),
                    selectedColor: AppColors.primary,
                    unselectedColor: Colors.grey),

                /// Profile
                SalomonBottomBarItem(
                    icon: const Icon(Icons.person),
                    title: const Text("Profile"),
                    selectedColor: AppColors.primary,
                    unselectedColor: Colors.grey),
              ],
            )));
  }

  Widget getViewForIndex(int index) {
    switch (index) {
      case 0:
        return const HomeView();
      case 1:
        return Container();
      case 2:
        return Container();
      case 3:
        return Container();
      default:
        return const HomeView();
    }
  }
}
