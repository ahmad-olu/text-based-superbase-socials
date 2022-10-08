import 'package:auto_route/auto_route.dart';
import 'package:geat/auth/presentaion/forgot_password_page.dart';
import 'package:geat/auth/presentaion/registration_page.dart';
import 'package:geat/auth/presentaion/usename_page.dart';
import 'package:geat/auth/presentaion/verify_email_page.dart';
import 'package:geat/auth/presentaion/walk_in_page.dart';
import 'package:geat/comment/presentaion/comment_comic_page.dart';
import 'package:geat/comment/presentaion/comment_text_page.dart';
import 'package:geat/feed/presentaion/book_details_page.dart';
import 'package:geat/feed/presentaion/comic_details_page.dart';
import 'package:geat/feed/presentaion/comic_feed_details_page.dart';
import 'package:geat/feed/presentaion/feed_page.dart';
import 'package:geat/feed/presentaion/text_feed_details_page.dart';
import 'package:geat/home/presentaion/home_page.dart';
import 'package:geat/notification/presentaion/notification_page.dart';
import 'package:geat/post/presentaion/comic_post_page.dart';
import 'package:geat/post/presentaion/text_post_page.dart';
import 'package:geat/profile/presentation/edit_profile_page.dart';
import 'package:geat/profile/presentation/profile_page.dart';
import 'package:geat/reImagined/presentaion/re_imagined_page.dart';
import 'package:geat/search/presentaion/search_page.dart';
import 'package:geat/settings/presentaion/settings_page.dart';
import 'package:geat/splash/presentaion/splash_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: [
    AutoRoute(page: SplashPage, initial: true),
    AutoRoute(page: WalkInPage, path: 'walk-in'),
    AutoRoute(page: RegistrationPage, path: 'registration'),
    AutoRoute(page: UserNameCheckPage, path: 'username-check'),
    AutoRoute(page: VerifyEmailPage, path: 'verify-email'),
    AutoRoute(page: ForgotPasswordPage, path: 'forgot-password'),
    // AutoRoute(page: TextPostPage, path: 'editors'),
    // AutoRoute(page: ComicPostPage, path: 'comic-posts'),
    AutoRoute(
      page: HomePage,
      path: 'home',
      children: [
        AutoRoute(
          page: EmptyRouterPage,
          path: 'feeds',
          name: 'feedsRouter',
          children: [
            AutoRoute(path: '', page: FeedsPage),
            AutoRoute(path: ':text-feed', page: TextFeedsDetailsPage),
            AutoRoute(path: ':comic-feed', page: ComicFeedsDetailsPage),
            AutoRoute(path: ':booksId', page: BooksDetailsPage),
            AutoRoute(path: ':comicId', page: ComicDetailsPage),
            AutoRoute(page: TextPostPage, path: ':editors'),
            AutoRoute(page: ComicPostPage, path: ':comic-posts'),
            AutoRoute(path: 'view-profile', page: ProfilePage),
            AutoRoute(page: CommentTextPage, path: 'comment-text'),
            AutoRoute(page: CommentComicPage, path: 'comment-comic'),
            AutoRoute(page: ReImaginedPage, path: ':reImagined'),
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          path: 'profile',
          name: 'profileRouter',
          children: [
            AutoRoute(path: 'view-profile', page: ProfilePage),
            AutoRoute(path: ':profileId', page: EditProfilePage),
            AutoRoute(path: ':settings', page: SettingsPage),
            AutoRoute(path: ':text-feed', page: TextFeedsDetailsPage),
            AutoRoute(path: ':comic-feed', page: ComicFeedsDetailsPage),
            AutoRoute(path: ':booksId', page: BooksDetailsPage),
            AutoRoute(path: ':comicId', page: ComicDetailsPage),
            AutoRoute(page: ReImaginedPage, path: ':reImagined'),
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          path: 'notification',
          name: 'notificationRouter',
          children: [
            AutoRoute(path: '', page: NotificationPage),
            AutoRoute(path: 'view-profile', page: ProfilePage),
            AutoRoute(page: CommentTextPage, path: 'comment-text'),
            AutoRoute(page: CommentComicPage, path: 'comment-comic'),
          ],
        ),
        AutoRoute(
          page: EmptyRouterPage,
          path: 'search',
          name: 'searchRouter',
          children: [
            AutoRoute(page: SearchPage, path: ''),
            AutoRoute(path: 'view-profile', page: ProfilePage),
          ],
        ),
      ],
    ),
  ],
)
class $AppRouter {}
