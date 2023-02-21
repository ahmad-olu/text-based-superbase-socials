// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i16;
import 'package:auto_route/empty_router_widgets.dart' as _i4;
import 'package:flutter/material.dart' as _i17;

import '../../auth/auth.dart' as _i2;
import '../../create_post/create_post.dart' as _i11;
import '../../feed/feed.dart' as _i5;
import '../../feed/view/feed_detail_page.dart' as _i6;
import '../../feed/view/widgets/widgets.dart' as _i9;
import '../../feedback/feedback.dart' as _i15;
import '../../home/home.dart' as _i3;
import '../../notification/notification.dart' as _i12;
import '../../profile/profile.dart' as _i8;
import '../../profile/view/widget/widgets.dart' as _i10;
import '../../profile_update/profile_update.dart' as _i14;
import '../../search/search.dart' as _i7;
import '../../settings/settings.dart' as _i13;
import '../../splash/splash.dart' as _i1;

class AppRouter extends _i16.RootStackRouter {
  AppRouter([_i17.GlobalKey<_i17.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i16.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i1.SplashPage(),
      );
    },
    WalkInRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.WalkInPage(),
      );
    },
    SignUpRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.SignUpPage(),
      );
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.ForgotPasswordPage(),
      );
    },
    ConfirmUserRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i2.ConfirmUserPage(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i3.HomePage(),
      );
    },
    FeedsRouter.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EmptyRouterPage(),
      );
    },
    CreatePostsRouter.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EmptyRouterPage(),
      );
    },
    NotificationsRouter.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EmptyRouterPage(),
      );
    },
    ProfilesRouter.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i4.EmptyRouterPage(),
      );
    },
    FeedRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i5.FeedPage(),
      );
    },
    FeedDetailsRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i6.FeedDetailsPage(),
      );
    },
    SearchRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i7.SearchPage(),
      );
    },
    ProfileRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i8.ProfilePage(),
      );
    },
    FeedPostRouter.name: (routeData) {
      final args = routeData.argsAs<FeedPostRouterArgs>();
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i9.FeedPostGrid(
          args.scrollController,
          key: args.key,
        ),
      );
    },
    ProfilePostGridRouter.name: (routeData) {
      final args = routeData.argsAs<ProfilePostGridRouterArgs>();
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.ProfilePostGrid(
          args.scrollController,
          key: args.key,
        ),
      );
    },
    ProfileReImaginedGridRouter.name: (routeData) {
      final args = routeData.argsAs<ProfileReImaginedGridRouterArgs>();
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.ProfileReImaginedGrid(
          args.scrollController,
          key: args.key,
        ),
      );
    },
    ProfileSavedGridRouter.name: (routeData) {
      final args = routeData.argsAs<ProfileSavedGridRouterArgs>();
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: _i10.ProfileSavedGrid(
          args.scrollController,
          key: args.key,
        ),
      );
    },
    CreatePostRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.CreatePostPage(),
      );
    },
    CreateTextPostRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.CreateTextPostPage(),
      );
    },
    CreateImagePostRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i11.CreateImagePostPage(),
      );
    },
    NotificationRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i12.NotificationPage(),
      );
    },
    SettingsRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i13.SettingsPage(),
      );
    },
    EmailUpdateRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.EmailUpdatePage(),
      );
    },
    UsernameUpdateRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.UsernameUpdatePage(),
      );
    },
    PasswordUpdateRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.PasswordUpdatePage(),
      );
    },
    CreateFeedBackRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i15.CreateFeedBackPage(),
      );
    },
    ImageUpdateRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.ImageUpdatePage(),
      );
    },
    OtherUpdateRoute.name: (routeData) {
      return _i16.MaterialPageX<dynamic>(
        routeData: routeData,
        child: const _i14.OtherUpdatePage(),
      );
    },
  };

  @override
  List<_i16.RouteConfig> get routes => [
        _i16.RouteConfig(
          '/#redirect',
          path: '/',
          redirectTo: '/home',
          fullMatch: true,
        ),
        _i16.RouteConfig(
          SplashRoute.name,
          path: '/splash-page',
        ),
        _i16.RouteConfig(
          WalkInRoute.name,
          path: '/walk-in-page',
        ),
        _i16.RouteConfig(
          SignUpRoute.name,
          path: '/sign-up-page',
        ),
        _i16.RouteConfig(
          ForgotPasswordRoute.name,
          path: '/forgot-password-page',
        ),
        _i16.RouteConfig(
          ConfirmUserRoute.name,
          path: '/confirm-user-page',
        ),
        _i16.RouteConfig(
          HomeRoute.name,
          path: '/home',
          children: [
            _i16.RouteConfig(
              FeedsRouter.name,
              path: 'feeds',
              parent: HomeRoute.name,
              children: [
                _i16.RouteConfig(
                  FeedRoute.name,
                  path: '',
                  parent: FeedsRouter.name,
                  children: [
                    _i16.RouteConfig(
                      FeedPostRouter.name,
                      path: 'feedPost',
                      parent: FeedRoute.name,
                    )
                  ],
                ),
                _i16.RouteConfig(
                  FeedDetailsRoute.name,
                  path: 'feedDetails',
                  parent: FeedsRouter.name,
                ),
                _i16.RouteConfig(
                  SearchRoute.name,
                  path: 'search',
                  parent: FeedsRouter.name,
                ),
                _i16.RouteConfig(
                  ProfileRoute.name,
                  path: '',
                  parent: FeedsRouter.name,
                  children: [
                    _i16.RouteConfig(
                      ProfilePostGridRouter.name,
                      path: 'profilePostGrid',
                      parent: ProfileRoute.name,
                    ),
                    _i16.RouteConfig(
                      ProfileReImaginedGridRouter.name,
                      path: 'profileReImaginedGrid',
                      parent: ProfileRoute.name,
                    ),
                    _i16.RouteConfig(
                      ProfileSavedGridRouter.name,
                      path: 'profileSavedGrid',
                      parent: ProfileRoute.name,
                    ),
                  ],
                ),
              ],
            ),
            _i16.RouteConfig(
              CreatePostsRouter.name,
              path: 'createPosts',
              parent: HomeRoute.name,
              children: [
                _i16.RouteConfig(
                  CreatePostRoute.name,
                  path: '',
                  parent: CreatePostsRouter.name,
                ),
                _i16.RouteConfig(
                  CreateTextPostRoute.name,
                  path: 'createTextPosts',
                  parent: CreatePostsRouter.name,
                ),
                _i16.RouteConfig(
                  CreateImagePostRoute.name,
                  path: 'createImagePosts',
                  parent: CreatePostsRouter.name,
                ),
              ],
            ),
            _i16.RouteConfig(
              NotificationsRouter.name,
              path: 'notifications',
              parent: HomeRoute.name,
              children: [
                _i16.RouteConfig(
                  NotificationRoute.name,
                  path: '',
                  parent: NotificationsRouter.name,
                ),
                _i16.RouteConfig(
                  ProfileRoute.name,
                  path: '',
                  parent: NotificationsRouter.name,
                  children: [
                    _i16.RouteConfig(
                      ProfilePostGridRouter.name,
                      path: 'profilePostGrid',
                      parent: ProfileRoute.name,
                    ),
                    _i16.RouteConfig(
                      ProfileReImaginedGridRouter.name,
                      path: 'profileReImaginedGrid',
                      parent: ProfileRoute.name,
                    ),
                    _i16.RouteConfig(
                      ProfileSavedGridRouter.name,
                      path: 'profileSavedGrid',
                      parent: ProfileRoute.name,
                    ),
                  ],
                ),
              ],
            ),
            _i16.RouteConfig(
              ProfilesRouter.name,
              path: 'profiles',
              parent: HomeRoute.name,
              children: [
                _i16.RouteConfig(
                  ProfileRoute.name,
                  path: '',
                  parent: ProfilesRouter.name,
                  children: [
                    _i16.RouteConfig(
                      ProfilePostGridRouter.name,
                      path: 'profilePostGrid',
                      parent: ProfileRoute.name,
                    ),
                    _i16.RouteConfig(
                      ProfileReImaginedGridRouter.name,
                      path: 'profileReImaginedGrid',
                      parent: ProfileRoute.name,
                    ),
                    _i16.RouteConfig(
                      ProfileSavedGridRouter.name,
                      path: 'profileSavedGrid',
                      parent: ProfileRoute.name,
                    ),
                  ],
                ),
                _i16.RouteConfig(
                  SettingsRoute.name,
                  path: 'settings',
                  parent: ProfilesRouter.name,
                ),
                _i16.RouteConfig(
                  EmailUpdateRoute.name,
                  path: 'emailUpdate',
                  parent: ProfilesRouter.name,
                ),
                _i16.RouteConfig(
                  UsernameUpdateRoute.name,
                  path: 'usernameUpdate',
                  parent: ProfilesRouter.name,
                ),
                _i16.RouteConfig(
                  PasswordUpdateRoute.name,
                  path: 'passwordUpdate',
                  parent: ProfilesRouter.name,
                ),
                _i16.RouteConfig(
                  CreateFeedBackRoute.name,
                  path: 'createFeedBack',
                  parent: ProfilesRouter.name,
                ),
                _i16.RouteConfig(
                  ImageUpdateRoute.name,
                  path: 'imageUpdate',
                  parent: ProfilesRouter.name,
                ),
                _i16.RouteConfig(
                  OtherUpdateRoute.name,
                  path: 'otherUpdate',
                  parent: ProfilesRouter.name,
                ),
              ],
            ),
          ],
        ),
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i16.PageRouteInfo<void> {
  const SplashRoute()
      : super(
          SplashRoute.name,
          path: '/splash-page',
        );

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.WalkInPage]
class WalkInRoute extends _i16.PageRouteInfo<void> {
  const WalkInRoute()
      : super(
          WalkInRoute.name,
          path: '/walk-in-page',
        );

  static const String name = 'WalkInRoute';
}

/// generated route for
/// [_i2.SignUpPage]
class SignUpRoute extends _i16.PageRouteInfo<void> {
  const SignUpRoute()
      : super(
          SignUpRoute.name,
          path: '/sign-up-page',
        );

  static const String name = 'SignUpRoute';
}

/// generated route for
/// [_i2.ForgotPasswordPage]
class ForgotPasswordRoute extends _i16.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(
          ForgotPasswordRoute.name,
          path: '/forgot-password-page',
        );

  static const String name = 'ForgotPasswordRoute';
}

/// generated route for
/// [_i2.ConfirmUserPage]
class ConfirmUserRoute extends _i16.PageRouteInfo<void> {
  const ConfirmUserRoute()
      : super(
          ConfirmUserRoute.name,
          path: '/confirm-user-page',
        );

  static const String name = 'ConfirmUserRoute';
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i16.PageRouteInfo<void> {
  const HomeRoute({List<_i16.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          path: '/home',
          initialChildren: children,
        );

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class FeedsRouter extends _i16.PageRouteInfo<void> {
  const FeedsRouter({List<_i16.PageRouteInfo>? children})
      : super(
          FeedsRouter.name,
          path: 'feeds',
          initialChildren: children,
        );

  static const String name = 'FeedsRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class CreatePostsRouter extends _i16.PageRouteInfo<void> {
  const CreatePostsRouter({List<_i16.PageRouteInfo>? children})
      : super(
          CreatePostsRouter.name,
          path: 'createPosts',
          initialChildren: children,
        );

  static const String name = 'CreatePostsRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class NotificationsRouter extends _i16.PageRouteInfo<void> {
  const NotificationsRouter({List<_i16.PageRouteInfo>? children})
      : super(
          NotificationsRouter.name,
          path: 'notifications',
          initialChildren: children,
        );

  static const String name = 'NotificationsRouter';
}

/// generated route for
/// [_i4.EmptyRouterPage]
class ProfilesRouter extends _i16.PageRouteInfo<void> {
  const ProfilesRouter({List<_i16.PageRouteInfo>? children})
      : super(
          ProfilesRouter.name,
          path: 'profiles',
          initialChildren: children,
        );

  static const String name = 'ProfilesRouter';
}

/// generated route for
/// [_i5.FeedPage]
class FeedRoute extends _i16.PageRouteInfo<void> {
  const FeedRoute({List<_i16.PageRouteInfo>? children})
      : super(
          FeedRoute.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'FeedRoute';
}

/// generated route for
/// [_i6.FeedDetailsPage]
class FeedDetailsRoute extends _i16.PageRouteInfo<void> {
  const FeedDetailsRoute()
      : super(
          FeedDetailsRoute.name,
          path: 'feedDetails',
        );

  static const String name = 'FeedDetailsRoute';
}

/// generated route for
/// [_i7.SearchPage]
class SearchRoute extends _i16.PageRouteInfo<void> {
  const SearchRoute()
      : super(
          SearchRoute.name,
          path: 'search',
        );

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i8.ProfilePage]
class ProfileRoute extends _i16.PageRouteInfo<void> {
  const ProfileRoute({List<_i16.PageRouteInfo>? children})
      : super(
          ProfileRoute.name,
          path: '',
          initialChildren: children,
        );

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i9.FeedPostGrid]
class FeedPostRouter extends _i16.PageRouteInfo<FeedPostRouterArgs> {
  FeedPostRouter({
    required _i17.ScrollController scrollController,
    _i17.Key? key,
  }) : super(
          FeedPostRouter.name,
          path: 'feedPost',
          args: FeedPostRouterArgs(
            scrollController: scrollController,
            key: key,
          ),
        );

  static const String name = 'FeedPostRouter';
}

class FeedPostRouterArgs {
  const FeedPostRouterArgs({
    required this.scrollController,
    this.key,
  });

  final _i17.ScrollController scrollController;

  final _i17.Key? key;

  @override
  String toString() {
    return 'FeedPostRouterArgs{scrollController: $scrollController, key: $key}';
  }
}

/// generated route for
/// [_i10.ProfilePostGrid]
class ProfilePostGridRouter
    extends _i16.PageRouteInfo<ProfilePostGridRouterArgs> {
  ProfilePostGridRouter({
    required _i17.ScrollController scrollController,
    _i17.Key? key,
  }) : super(
          ProfilePostGridRouter.name,
          path: 'profilePostGrid',
          args: ProfilePostGridRouterArgs(
            scrollController: scrollController,
            key: key,
          ),
        );

  static const String name = 'ProfilePostGridRouter';
}

class ProfilePostGridRouterArgs {
  const ProfilePostGridRouterArgs({
    required this.scrollController,
    this.key,
  });

  final _i17.ScrollController scrollController;

  final _i17.Key? key;

  @override
  String toString() {
    return 'ProfilePostGridRouterArgs{scrollController: $scrollController, key: $key}';
  }
}

/// generated route for
/// [_i10.ProfileReImaginedGrid]
class ProfileReImaginedGridRouter
    extends _i16.PageRouteInfo<ProfileReImaginedGridRouterArgs> {
  ProfileReImaginedGridRouter({
    required _i17.ScrollController scrollController,
    _i17.Key? key,
  }) : super(
          ProfileReImaginedGridRouter.name,
          path: 'profileReImaginedGrid',
          args: ProfileReImaginedGridRouterArgs(
            scrollController: scrollController,
            key: key,
          ),
        );

  static const String name = 'ProfileReImaginedGridRouter';
}

class ProfileReImaginedGridRouterArgs {
  const ProfileReImaginedGridRouterArgs({
    required this.scrollController,
    this.key,
  });

  final _i17.ScrollController scrollController;

  final _i17.Key? key;

  @override
  String toString() {
    return 'ProfileReImaginedGridRouterArgs{scrollController: $scrollController, key: $key}';
  }
}

/// generated route for
/// [_i10.ProfileSavedGrid]
class ProfileSavedGridRouter
    extends _i16.PageRouteInfo<ProfileSavedGridRouterArgs> {
  ProfileSavedGridRouter({
    required _i17.ScrollController scrollController,
    _i17.Key? key,
  }) : super(
          ProfileSavedGridRouter.name,
          path: 'profileSavedGrid',
          args: ProfileSavedGridRouterArgs(
            scrollController: scrollController,
            key: key,
          ),
        );

  static const String name = 'ProfileSavedGridRouter';
}

class ProfileSavedGridRouterArgs {
  const ProfileSavedGridRouterArgs({
    required this.scrollController,
    this.key,
  });

  final _i17.ScrollController scrollController;

  final _i17.Key? key;

  @override
  String toString() {
    return 'ProfileSavedGridRouterArgs{scrollController: $scrollController, key: $key}';
  }
}

/// generated route for
/// [_i11.CreatePostPage]
class CreatePostRoute extends _i16.PageRouteInfo<void> {
  const CreatePostRoute()
      : super(
          CreatePostRoute.name,
          path: '',
        );

  static const String name = 'CreatePostRoute';
}

/// generated route for
/// [_i11.CreateTextPostPage]
class CreateTextPostRoute extends _i16.PageRouteInfo<void> {
  const CreateTextPostRoute()
      : super(
          CreateTextPostRoute.name,
          path: 'createTextPosts',
        );

  static const String name = 'CreateTextPostRoute';
}

/// generated route for
/// [_i11.CreateImagePostPage]
class CreateImagePostRoute extends _i16.PageRouteInfo<void> {
  const CreateImagePostRoute()
      : super(
          CreateImagePostRoute.name,
          path: 'createImagePosts',
        );

  static const String name = 'CreateImagePostRoute';
}

/// generated route for
/// [_i12.NotificationPage]
class NotificationRoute extends _i16.PageRouteInfo<void> {
  const NotificationRoute()
      : super(
          NotificationRoute.name,
          path: '',
        );

  static const String name = 'NotificationRoute';
}

/// generated route for
/// [_i13.SettingsPage]
class SettingsRoute extends _i16.PageRouteInfo<void> {
  const SettingsRoute()
      : super(
          SettingsRoute.name,
          path: 'settings',
        );

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i14.EmailUpdatePage]
class EmailUpdateRoute extends _i16.PageRouteInfo<void> {
  const EmailUpdateRoute()
      : super(
          EmailUpdateRoute.name,
          path: 'emailUpdate',
        );

  static const String name = 'EmailUpdateRoute';
}

/// generated route for
/// [_i14.UsernameUpdatePage]
class UsernameUpdateRoute extends _i16.PageRouteInfo<void> {
  const UsernameUpdateRoute()
      : super(
          UsernameUpdateRoute.name,
          path: 'usernameUpdate',
        );

  static const String name = 'UsernameUpdateRoute';
}

/// generated route for
/// [_i14.PasswordUpdatePage]
class PasswordUpdateRoute extends _i16.PageRouteInfo<void> {
  const PasswordUpdateRoute()
      : super(
          PasswordUpdateRoute.name,
          path: 'passwordUpdate',
        );

  static const String name = 'PasswordUpdateRoute';
}

/// generated route for
/// [_i15.CreateFeedBackPage]
class CreateFeedBackRoute extends _i16.PageRouteInfo<void> {
  const CreateFeedBackRoute()
      : super(
          CreateFeedBackRoute.name,
          path: 'createFeedBack',
        );

  static const String name = 'CreateFeedBackRoute';
}

/// generated route for
/// [_i14.ImageUpdatePage]
class ImageUpdateRoute extends _i16.PageRouteInfo<void> {
  const ImageUpdateRoute()
      : super(
          ImageUpdateRoute.name,
          path: 'imageUpdate',
        );

  static const String name = 'ImageUpdateRoute';
}

/// generated route for
/// [_i14.OtherUpdatePage]
class OtherUpdateRoute extends _i16.PageRouteInfo<void> {
  const OtherUpdateRoute()
      : super(
          OtherUpdateRoute.name,
          path: 'otherUpdate',
        );

  static const String name = 'OtherUpdateRoute';
}
