import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:url_launcher/url_launcher.dart';

import '../constants/app_colors.dart';
import '../generated/assets.gen.dart';
import '../router/app_router.dart';

@RoutePage()
class NavBarScreen extends StatelessWidget {
  const NavBarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      routes: const [
        MainRoute(),
        ChatsRoute(),
        LikeRoute(),
        SettingsRoute(),
      ],
      bottomNavigationBuilder: (_, tabsRouter) => NavigationBar(
        indicatorColor: Colors.transparent,
        selectedIndex: tabsRouter.activeIndex,
        onDestinationSelected: tabsRouter.setActiveIndex,
        backgroundColor: AppColors.dark19,
        destinations: [
          NavigationDestination(
            label: '',
            icon: SvgPicture.asset(Assets.svg.mainComponent),
            selectedIcon: SvgPicture.asset(
              Assets.svg.mainComponent,
              colorFilter: const ColorFilter.mode(Colors.orange, BlendMode.srcIn),
            ),
          ),
          NavigationDestination(
            label: '',
            icon: SvgPicture.asset(Assets.svg.chat),
            selectedIcon: SvgPicture.asset(
              Assets.svg.chat,
              colorFilter: const ColorFilter.mode(Colors.orange, BlendMode.srcIn),
            ),
          ),
          NavigationDestination(
            label: '',
            icon: SvgPicture.asset(Assets.svg.like),
            selectedIcon: SvgPicture.asset(
              Assets.svg.like,
              colorFilter: const ColorFilter.mode(Colors.orange, BlendMode.srcIn),
            ),
          ),
          NavigationDestination(
            label: '',
            icon: SvgPicture.asset(Assets.svg.settings),
            selectedIcon: SvgPicture.asset(
              Assets.svg.settings,
              colorFilter: const ColorFilter.mode(Colors.orange, BlendMode.srcIn),
            ),
          ),
        ],
      ),
    );
  }
}

@RoutePage()
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('MainPage'));
  }
}

@RoutePage()
class LikePage extends StatelessWidget {
  const LikePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text('LikePage'));
  }
}

@RoutePage()
class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            child: Text('Код проекта'),
            onPressed: () async => await launchUrl(Uri.parse('https://github.com/Bek-End/geo_fin')),
          ),
        ],
      ),
    );
  }
}
