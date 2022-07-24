// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i13;

import '../../auth/confirm_registration/confirm_registration.dart' as _i3;
import '../../auth/registration/registration.dart' as _i2;
import '../../auth/walk_in/walk_in.dart' as _i1;
import '../../editor/editor.dart' as _i5;
import '../../feeds/feeds.dart' as _i10;
import '../../feeds/presentation/widgets/readers_page.dart' as _i11;
import '../../home/home.dart' as _i7;
import '../../notification/notification.dart' as _i9;
import '../../post/post.dart' as _i6;
import '../../profile/profile.dart' as _i12;
import '../../settings/settings.dart' as _i4;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i13.GlobalKey<_i13.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    WalkInRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.WalkInPage());
    },
    RegistrationRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.RegistrationPage());
    },
    ConfirmRegistrationRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.ConfirmRegistrationPage());
    },
    SettingsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.SettingsPage());
    },
    EditorsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EditorsPage());
    },
    PostRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.PostPage());
    },
    HomeRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i7.HomePage());
    },
    FeedsRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.EmptyRouterPage());
    },
    ProfileRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.EmptyRouterPage());
    },
    NotificationRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.NotificationPage());
    },
    FeedsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.FeedsPage());
    },
    FeedsDetailsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i10.FeedsDetailsPage());
    },
    BooksDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<BooksDetailsRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i11.BooksDetailsPage(
              key: args.key,
              title: args.title,
              subtitle: args.subtitle,
              description: args.description));
    },
    ProfileRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.ProfilePage());
    },
    EditProfileRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i12.EditProfilePage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(WalkInRoute.name, path: '/'),
        _i8.RouteConfig(RegistrationRoute.name, path: 'registration'),
        _i8.RouteConfig(ConfirmRegistrationRoute.name,
            path: 'confirm-registration'),
        _i8.RouteConfig(SettingsRoute.name, path: 'settings'),
        _i8.RouteConfig(EditorsRoute.name, path: 'editors'),
        _i8.RouteConfig(PostRoute.name, path: 'posts'),
        _i8.RouteConfig(HomeRoute.name, path: 'home', children: [
          _i8.RouteConfig(FeedsRouter.name,
              path: 'feeds',
              parent: HomeRoute.name,
              children: [
                _i8.RouteConfig(FeedsRoute.name,
                    path: '', parent: FeedsRouter.name),
                _i8.RouteConfig(FeedsDetailsRoute.name,
                    path: ':feedId', parent: FeedsRouter.name),
                _i8.RouteConfig(BooksDetailsRoute.name,
                    path: ':booksId', parent: FeedsRouter.name)
              ]),
          _i8.RouteConfig(ProfileRouter.name,
              path: 'profile',
              parent: HomeRoute.name,
              children: [
                _i8.RouteConfig(ProfileRoute.name,
                    path: '', parent: ProfileRouter.name),
                _i8.RouteConfig(EditProfileRoute.name,
                    path: ':profileId', parent: ProfileRouter.name)
              ]),
          _i8.RouteConfig(NotificationRoute.name,
              path: 'notification', parent: HomeRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.WalkInPage]
class WalkInRoute extends _i8.PageRouteInfo<void> {
  const WalkInRoute() : super(WalkInRoute.name, path: '/');

  static const String name = 'WalkInRoute';
}

/// generated route for
/// [_i2.RegistrationPage]
class RegistrationRoute extends _i8.PageRouteInfo<void> {
  const RegistrationRoute()
      : super(RegistrationRoute.name, path: 'registration');

  static const String name = 'RegistrationRoute';
}

/// generated route for
/// [_i3.ConfirmRegistrationPage]
class ConfirmRegistrationRoute extends _i8.PageRouteInfo<void> {
  const ConfirmRegistrationRoute()
      : super(ConfirmRegistrationRoute.name, path: 'confirm-registration');

  static const String name = 'ConfirmRegistrationRoute';
}

/// generated route for
/// [_i4.SettingsPage]
class SettingsRoute extends _i8.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: 'settings');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i5.EditorsPage]
class EditorsRoute extends _i8.PageRouteInfo<void> {
  const EditorsRoute() : super(EditorsRoute.name, path: 'editors');

  static const String name = 'EditorsRoute';
}

/// generated route for
/// [_i6.PostPage]
class PostRoute extends _i8.PageRouteInfo<void> {
  const PostRoute() : super(PostRoute.name, path: 'posts');

  static const String name = 'PostRoute';
}

/// generated route for
/// [_i7.HomePage]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(HomeRoute.name, path: 'home', initialChildren: children);

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i8.EmptyRouterPage]
class FeedsRouter extends _i8.PageRouteInfo<void> {
  const FeedsRouter({List<_i8.PageRouteInfo>? children})
      : super(FeedsRouter.name, path: 'feeds', initialChildren: children);

  static const String name = 'FeedsRouter';
}

/// generated route for
/// [_i8.EmptyRouterPage]
class ProfileRouter extends _i8.PageRouteInfo<void> {
  const ProfileRouter({List<_i8.PageRouteInfo>? children})
      : super(ProfileRouter.name, path: 'profile', initialChildren: children);

  static const String name = 'ProfileRouter';
}

/// generated route for
/// [_i9.NotificationPage]
class NotificationRoute extends _i8.PageRouteInfo<void> {
  const NotificationRoute()
      : super(NotificationRoute.name, path: 'notification');

  static const String name = 'NotificationRoute';
}

/// generated route for
/// [_i10.FeedsPage]
class FeedsRoute extends _i8.PageRouteInfo<void> {
  const FeedsRoute() : super(FeedsRoute.name, path: '');

  static const String name = 'FeedsRoute';
}

/// generated route for
/// [_i10.FeedsDetailsPage]
class FeedsDetailsRoute extends _i8.PageRouteInfo<void> {
  const FeedsDetailsRoute() : super(FeedsDetailsRoute.name, path: ':feedId');

  static const String name = 'FeedsDetailsRoute';
}

/// generated route for
/// [_i11.BooksDetailsPage]
class BooksDetailsRoute extends _i8.PageRouteInfo<BooksDetailsRouteArgs> {
  BooksDetailsRoute(
      {_i13.Key? key,
      required String title,
      required String subtitle,
      required String description})
      : super(BooksDetailsRoute.name,
            path: ':booksId',
            args: BooksDetailsRouteArgs(
                key: key,
                title: title,
                subtitle: subtitle,
                description: description));

  static const String name = 'BooksDetailsRoute';
}

class BooksDetailsRouteArgs {
  const BooksDetailsRouteArgs(
      {this.key,
      required this.title,
      required this.subtitle,
      required this.description});

  final _i13.Key? key;

  final String title;

  final String subtitle;

  final String description;

  @override
  String toString() {
    return 'BooksDetailsRouteArgs{key: $key, title: $title, subtitle: $subtitle, description: $description}';
  }
}

/// generated route for
/// [_i12.ProfilePage]
class ProfileRoute extends _i8.PageRouteInfo<void> {
  const ProfileRoute() : super(ProfileRoute.name, path: '');

  static const String name = 'ProfileRoute';
}

/// generated route for
/// [_i12.EditProfilePage]
class EditProfileRoute extends _i8.PageRouteInfo<void> {
  const EditProfileRoute() : super(EditProfileRoute.name, path: ':profileId');

  static const String name = 'EditProfileRoute';
}
