import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';

import '../../features/chat/domain/entities/chat_entity.dart';
import '../../features/chat/presentation/pages/pages.dart';
import '../widgets/widgets.dart' show NavBarScreen, MainPage, LikePage, SettingsPage;

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          path: '/',
          initial: true,
          page: NavBarRoute.page,
          children: [
            RedirectRoute(path: '', redirectTo: 'chats'),
            AutoRoute(path: 'main', page: MainRoute.page),
            AutoRoute(path: 'chats', page: ChatsRoute.page),
            AutoRoute(path: 'like', page: LikeRoute.page),
            AutoRoute(path: 'settings', page: SettingsRoute.page),
          ],
        ),
        AutoRoute(path: '/chat', page: ChatRoute.page),
      ];
}
