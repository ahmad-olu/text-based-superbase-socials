import 'package:auto_route/auto_route.dart';
import 'package:geat/auth/confirm_registration/confirm_registration.dart';
import 'package:geat/auth/registration/registration.dart';
import 'package:geat/auth/walk_in/walk_in.dart';
import 'package:geat/editor/editor.dart';
import 'package:geat/feeds/feeds.dart';
import 'package:geat/feeds/presentation/widgets/readers_page.dart';
import 'package:geat/home/home.dart';
import 'package:geat/notification/notification.dart';
import 'package:geat/post/post.dart';
import 'package:geat/profile/profile.dart';
import 'package:geat/settings/settings.dart';
import 'package:geat/splash/presentation/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',

  //todo? dont forget to add @pathParam to the front of the consttructure name in nested route e.g @pathparam required this.description,
  routes: [
    //AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: WalkInPage, initial: true),
    //AutoRoute(page: WalkInPage, path: 'walk-in'),
    AutoRoute(page: RegistrationPage, path: 'registration'),
    AutoRoute(page: ConfirmRegistrationPage, path: 'confirm-registration'),
    AutoRoute(page: SettingsPage, path: 'settings'),
    AutoRoute(page: EditorsPage, path: 'editors'),
    AutoRoute(page: PostPage, path: 'posts'),
    AutoRoute(
      page: HomePage,
      path: 'home',
      children: [
        AutoRoute(
          page: EmptyRouterPage,
          path: 'feeds',
          name: 'feedsRouter',
          children: [
            AutoRoute(
              path: '',
              page: FeedsPage,
            ),
            AutoRoute(
              path: ':feedId',
              page: FeedsDetailsPage,
            ),
            AutoRoute(
              path: ':booksId',
              page: BooksDetailsPage,
            ),
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          path: 'profile',
          name: 'profileRouter',
          children: [
            AutoRoute(
              path: '',
              page: ProfilePage,
            ),
            AutoRoute(
              path: ':profileId',
              page: EditProfilePage,
            ),
          ],
        ),
        AutoRoute(
          path: 'notification',
          page: NotificationPage,
        ),
      ],
    ),
  ],
)
class $AppRouter {}
