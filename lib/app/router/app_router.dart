import 'package:auto_route/auto_route.dart';
import 'package:auto_route/empty_router_widgets.dart';
import 'package:flutter/material.dart';
import 'package:geat/app/constants/constants.dart';
import 'package:geat/auth/auth.dart';
import 'package:geat/create_post/create_post.dart';
import 'package:geat/error/error.dart';
import 'package:geat/feed/feed.dart';
import 'package:geat/feed/view/feed_detail_page.dart';
import 'package:geat/feed/view/widgets/widgets.dart';
import 'package:geat/feedback/feedback.dart';
import 'package:geat/home/home.dart';
import 'package:geat/notification/notification.dart';
import 'package:geat/profile/profile.dart';
import 'package:geat/profile/view/widget/widgets.dart';
import 'package:geat/profile_update/profile_update.dart';
import 'package:geat/search/search.dart';
import 'package:geat/settings/settings.dart';
import 'package:geat/splash/splash.dart';
import 'package:go_router/go_router.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page|view,Route',
  routes: <AutoRoute>[
    AutoRoute(page: SplashPage),
    AutoRoute(page: WalkInPage),
    AutoRoute(page: SignUpPage),
    AutoRoute(page: ForgotPasswordPage),
    AutoRoute(page: ConfirmUserPage),
    AutoRoute(
      path: '/home',
      page: HomePage,
      initial: true,
      children: [
        AutoRoute(
            path: 'feeds',
            name: 'feedsRouter',
            page: EmptyRouterPage,
            children: [
              AutoRoute(
                path: '',
                page: FeedPage,
                children: [
                  AutoRoute(
                    path: 'feedPost',
                    page: FeedPostGrid,
                    name: 'feedPostRouter',
                  ),
                ],
              ),
              AutoRoute(path: 'feedDetails', page: FeedDetailsPage),
              AutoRoute(path: 'search', page: SearchPage),
              AutoRoute(
                path: '',
                page: ProfilePage,
                children: [
                  AutoRoute(
                    path: 'profilePostGrid',
                    page: ProfilePostGrid,
                    name: 'ProfilePostGridRouter',
                  ),
                  AutoRoute(
                    path: 'profileReImaginedGrid',
                    page: ProfileReImaginedGrid,
                    name: 'ProfileReImaginedGridRouter',
                  ),
                  AutoRoute(
                    path: 'profileSavedGrid',
                    page: ProfileSavedGrid,
                    name: 'ProfileSavedGridRouter',
                  ),
                ],
              ),
            ]),
        AutoRoute(
            path: 'createPosts',
            name: 'createPostsRouter',
            page: EmptyRouterPage,
            children: [
              AutoRoute(path: '', page: CreatePostPage),
              AutoRoute(path: 'createTextPosts', page: CreateTextPostPage),
              AutoRoute(path: 'createImagePosts', page: CreateImagePostPage),
            ]),
        AutoRoute(
            path: 'notifications',
            name: 'notificationsRouter',
            page: EmptyRouterPage,
            children: [
              AutoRoute(path: '', page: NotificationPage),
              AutoRoute(
                path: '',
                page: ProfilePage,
                children: [
                  AutoRoute(
                    path: 'profilePostGrid',
                    page: ProfilePostGrid,
                    name: 'ProfilePostGridRouter',
                  ),
                  AutoRoute(
                    path: 'profileReImaginedGrid',
                    page: ProfileReImaginedGrid,
                    name: 'ProfileReImaginedGridRouter',
                  ),
                  AutoRoute(
                    path: 'profileSavedGrid',
                    page: ProfileSavedGrid,
                    name: 'ProfileSavedGridRouter',
                  ),
                ],
              ),
            ]),
        AutoRoute(
            path: 'profiles',
            name: 'profilesRouter',
            page: EmptyRouterPage,
            children: [
              AutoRoute(
                path: '',
                page: ProfilePage,
                children: [
                  AutoRoute(
                    path: 'profilePostGrid',
                    page: ProfilePostGrid,
                    name: 'ProfilePostGridRouter',
                  ),
                  AutoRoute(
                    path: 'profileReImaginedGrid',
                    page: ProfileReImaginedGrid,
                    name: 'ProfileReImaginedGridRouter',
                  ),
                  AutoRoute(
                    path: 'profileSavedGrid',
                    page: ProfileSavedGrid,
                    name: 'ProfileSavedGridRouter',
                  ),
                ],
              ),
              AutoRoute(path: 'settings', page: SettingsPage),
              AutoRoute(path: 'emailUpdate', page: EmailUpdatePage),
              AutoRoute(path: 'usernameUpdate', page: UsernameUpdatePage),
              AutoRoute(path: 'passwordUpdate', page: PasswordUpdatePage),
              AutoRoute(path: 'createFeedBack', page: CreateFeedBackPage),
              AutoRoute(path: 'imageUpdate', page: ImageUpdatePage),
              AutoRoute(path: 'otherUpdate', page: OtherUpdatePage),
            ]),
      ],
    ),
  ],
)
class $AppRouter {}

// final goRouterProvider = Provider<GoRouter>((_) {
//   final GlobalKey<NavigatorState> _rootNavigator =
//       GlobalKey(debugLabel: 'root');
//   final GlobalKey<NavigatorState> _shellNavigator =
//       GlobalKey(debugLabel: 'shell');
//   return GoRouter(
//     initialLocation: '/${BottomNavName.feeds}',
//     navigatorKey: _rootNavigator,
//     routes: <RouteBase>[
//       GoRoute(
//         name: BottomNavName.splash,
//         path: '/${BottomNavName.splash}',
//         builder: (BuildContext context, GoRouterState state) =>
//             SplashPage(key: state.pageKey),
//       ),
//       GoRoute(
//         name: BottomNavName.walkIn,
//         path: '/${BottomNavName.walkIn}',
//         builder: (BuildContext context, GoRouterState state) =>
//             WalkInPage(key: state.pageKey),
//       ),
//       GoRoute(
//         name: BottomNavName.signUp,
//         path: '/${BottomNavName.signUp}',
//         builder: (BuildContext context, GoRouterState state) =>
//             SignUpPage(key: state.pageKey),
//       ),
//       ShellRoute(
//         navigatorKey: _shellNavigator,
//         builder: (context, state, child) =>
//             HomePage(key: state.pageKey, child: child),
//         routes: [
//           GoRoute(
//               name: BottomNavName.feeds,
//               path: '/${BottomNavName.feeds}',
//               builder: (BuildContext context, GoRouterState state) {
//                 return FeedPage(key: state.pageKey);
//               },
//               routes: [
//                 GoRoute(
//                   name: BottomNavName.feedsDetails,
//                   path: BottomNavName.feedsDetails,
//                   builder: (BuildContext context, GoRouterState state) {
//                     return FeedDetailsPage(key: state.pageKey);
//                   },
//                 ),
//                 GoRoute(
//                   name: BottomNavName.search,
//                   path: BottomNavName.search,
//                   builder: (BuildContext context, GoRouterState state) {
//                     return SearchPage(key: state.pageKey);
//                   },
//                 ),
//                 // GoRoute(
//                 //   name: BottomNavName.profile,
//                 //   path: BottomNavName.profile,
//                 //   builder: (BuildContext context, GoRouterState state) {
//                 //     return ProfilePage(key: state.pageKey);
//                 //   },
//                 // )
//               ]),
//           GoRoute(
//               name: BottomNavName.createPost,
//               path: '/${BottomNavName.createPost}',
//               builder: (BuildContext context, GoRouterState state) {
//                 return CreatePostPage(key: state.pageKey);
//               },
//               routes: [
//                 GoRoute(
//                   name: BottomNavName.createTextPost,
//                   path: BottomNavName.createTextPost,
//                   builder: (BuildContext context, GoRouterState state) {
//                     return CreateTextPostPage(key: state.pageKey);
//                   },
//                 ),
//                 GoRoute(
//                   name: BottomNavName.createImagePost,
//                   path: BottomNavName.createImagePost,
//                   builder: (BuildContext context, GoRouterState state) {
//                     return CreateImagePostPage(key: state.pageKey);
//                   },
//                 ),
//               ]),
//           GoRoute(
//             name: BottomNavName.notifications,
//             path: '/${BottomNavName.notifications}',
//             builder: (BuildContext context, GoRouterState state) {
//               return NotificationPage(key: state.pageKey);
//             },
//             routes: const [
//               // GoRoute(
//               //   name: BottomNavName.profile,
//               //   path: BottomNavName.profile,
//               //   builder: (BuildContext context, GoRouterState state) {
//               //     return ProfilePage(key: state.pageKey);
//               //   },
//               // )
//             ],
//           ),
//           GoRoute(
//             name: BottomNavName.profile,
//             path: '/${BottomNavName.profile}',
//             builder: (BuildContext context, GoRouterState state) {
//               return ProfilePage(key: state.pageKey);
//             },
//             routes: [
//               GoRoute(
//                 name: BottomNavName.settings,
//                 path: BottomNavName.settings,
//                 builder: (BuildContext context, GoRouterState state) {
//                   return SettingsPage(key: state.pageKey);
//                 },
//               ),
//             ],
//           ),
//         ],
//       ),
//     ],
//     errorBuilder: (context, state) => RouteErrorScreen(
//       error: state.error.toString(),
//       key: state.pageKey,
//     ),
//   );
// });
