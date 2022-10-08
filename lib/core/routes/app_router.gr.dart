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
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i24;

import '../../auth/presentaion/forgot_password_page.dart' as _i6;
import '../../auth/presentaion/registration_page.dart' as _i3;
import '../../auth/presentaion/usename_page.dart' as _i4;
import '../../auth/presentaion/verify_email_page.dart' as _i5;
import '../../auth/presentaion/walk_in_page.dart' as _i2;
import '../../comment/presentaion/comment_comic_page.dart' as _i18;
import '../../comment/presentaion/comment_text_page.dart' as _i17;
import '../../feed/presentaion/book_details_page.dart' as _i12;
import '../../feed/presentaion/comic_details_page.dart' as _i13;
import '../../feed/presentaion/comic_feed_details_page.dart' as _i11;
import '../../feed/presentaion/feed_page.dart' as _i9;
import '../../feed/presentaion/text_feed_details_page.dart' as _i10;
import '../../home/presentaion/home_page.dart' as _i7;
import '../../notification/presentaion/notification_page.dart' as _i22;
import '../../post/domain/comic_post_model.dart' as _i26;
import '../../post/domain/text_post_model.dart' as _i25;
import '../../post/presentaion/comic_post_page.dart' as _i15;
import '../../post/presentaion/text_post_page.dart' as _i14;
import '../../profile/application/profile_bloc/profile_bloc.dart' as _i28;
import '../../profile/presentation/edit_profile_page.dart' as _i20;
import '../../profile/presentation/profile_page.dart' as _i16;
import '../../reImagined/application/bloc/re_imagined_bloc.dart' as _i27;
import '../../reImagined/presentaion/re_imagined_page.dart' as _i19;
import '../../search/presentaion/search_page.dart' as _i23;
import '../../settings/presentaion/settings_page.dart' as _i21;
import '../../splash/presentaion/splash_page.dart' as _i1;

class AppRouter extends _i8.RootStackRouter {
  AppRouter([_i24.GlobalKey<_i24.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    WalkInRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.WalkInPage());
    },
    RegistrationRoute.name: (routeData) {
      final args = routeData.argsAs<RegistrationRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.RegistrationPage(key: args.key, username: args.username));
    },
    UserNameCheckRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.UserNameCheckPage());
    },
    VerifyEmailRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.VerifyEmailPage());
    },
    ForgotPasswordRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.ForgotPasswordPage());
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
    NotificationRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.EmptyRouterPage());
    },
    SearchRouter.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i8.EmptyRouterPage());
    },
    FeedsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i9.FeedsPage());
    },
    TextFeedsDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<TextFeedsDetailsRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i10.TextFeedsDetailsPage(key: args.key, posts: args.posts));
    },
    ComicFeedsDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ComicFeedsDetailsRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i11.ComicFeedsDetailsPage(key: args.key, posts: args.posts));
    },
    BooksDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<BooksDetailsRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i12.BooksDetailsPage(
              key: args.key,
              posts: args.posts,
              reImagined: args.reImagined,
              isReImaginedAvailable: args.isReImaginedAvailable));
    },
    ComicDetailsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i13.ComicDetailsPage());
    },
    TextPostRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i14.TextPostPage());
    },
    ComicPostRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i15.ComicPostPage());
    },
    ProfileRoute.name: (routeData) {
      final args = routeData.argsAs<ProfileRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i16.ProfilePage(key: args.key, userId: args.userId));
    },
    CommentTextRoute.name: (routeData) {
      final args = routeData.argsAs<CommentTextRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i17.CommentTextPage(key: args.key, textPost: args.textPost));
    },
    CommentComicRoute.name: (routeData) {
      final args = routeData.argsAs<CommentComicRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child:
              _i18.CommentComicPage(key: args.key, comicPost: args.comicPost));
    },
    ReImaginedRoute.name: (routeData) {
      final args = routeData.argsAs<ReImaginedRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i19.ReImaginedPage(
              key: args.key,
              textPost: args.textPost,
              reImaginedBloc: args.reImaginedBloc));
    },
    EditProfileRoute.name: (routeData) {
      final args = routeData.argsAs<EditProfileRouteArgs>();
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i20.EditProfilePage(
              key: args.key, profileBloc: args.profileBloc));
    },
    SettingsRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i21.SettingsPage());
    },
    NotificationRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i22.NotificationPage());
    },
    SearchRoute.name: (routeData) {
      return _i8.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i23.SearchPage());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(SplashRoute.name, path: '/'),
        _i8.RouteConfig(WalkInRoute.name, path: 'walk-in'),
        _i8.RouteConfig(RegistrationRoute.name, path: 'registration'),
        _i8.RouteConfig(UserNameCheckRoute.name, path: 'username-check'),
        _i8.RouteConfig(VerifyEmailRoute.name, path: 'verify-email'),
        _i8.RouteConfig(ForgotPasswordRoute.name, path: 'forgot-password'),
        _i8.RouteConfig(HomeRoute.name, path: 'home', children: [
          _i8.RouteConfig(FeedsRouter.name,
              path: 'feeds',
              parent: HomeRoute.name,
              children: [
                _i8.RouteConfig(FeedsRoute.name,
                    path: '', parent: FeedsRouter.name),
                _i8.RouteConfig(TextFeedsDetailsRoute.name,
                    path: ':text-feed', parent: FeedsRouter.name),
                _i8.RouteConfig(ComicFeedsDetailsRoute.name,
                    path: ':comic-feed', parent: FeedsRouter.name),
                _i8.RouteConfig(BooksDetailsRoute.name,
                    path: ':booksId', parent: FeedsRouter.name),
                _i8.RouteConfig(ComicDetailsRoute.name,
                    path: ':comicId', parent: FeedsRouter.name),
                _i8.RouteConfig(TextPostRoute.name,
                    path: ':editors', parent: FeedsRouter.name),
                _i8.RouteConfig(ComicPostRoute.name,
                    path: ':comic-posts', parent: FeedsRouter.name),
                _i8.RouteConfig(ProfileRoute.name,
                    path: 'view-profile', parent: FeedsRouter.name),
                _i8.RouteConfig(CommentTextRoute.name,
                    path: 'comment-text', parent: FeedsRouter.name),
                _i8.RouteConfig(CommentComicRoute.name,
                    path: 'comment-comic', parent: FeedsRouter.name),
                _i8.RouteConfig(ReImaginedRoute.name,
                    path: ':reImagined', parent: FeedsRouter.name)
              ]),
          _i8.RouteConfig(ProfileRouter.name,
              path: 'profile',
              parent: HomeRoute.name,
              children: [
                _i8.RouteConfig(ProfileRoute.name,
                    path: 'view-profile', parent: ProfileRouter.name),
                _i8.RouteConfig(EditProfileRoute.name,
                    path: ':profileId', parent: ProfileRouter.name),
                _i8.RouteConfig(SettingsRoute.name,
                    path: ':settings', parent: ProfileRouter.name),
                _i8.RouteConfig(TextFeedsDetailsRoute.name,
                    path: ':text-feed', parent: ProfileRouter.name),
                _i8.RouteConfig(ComicFeedsDetailsRoute.name,
                    path: ':comic-feed', parent: ProfileRouter.name),
                _i8.RouteConfig(BooksDetailsRoute.name,
                    path: ':booksId', parent: ProfileRouter.name),
                _i8.RouteConfig(ComicDetailsRoute.name,
                    path: ':comicId', parent: ProfileRouter.name),
                _i8.RouteConfig(ReImaginedRoute.name,
                    path: ':reImagined', parent: ProfileRouter.name)
              ]),
          _i8.RouteConfig(NotificationRouter.name,
              path: 'notification',
              parent: HomeRoute.name,
              children: [
                _i8.RouteConfig(NotificationRoute.name,
                    path: '', parent: NotificationRouter.name),
                _i8.RouteConfig(ProfileRoute.name,
                    path: 'view-profile', parent: NotificationRouter.name),
                _i8.RouteConfig(CommentTextRoute.name,
                    path: 'comment-text', parent: NotificationRouter.name),
                _i8.RouteConfig(CommentComicRoute.name,
                    path: 'comment-comic', parent: NotificationRouter.name)
              ]),
          _i8.RouteConfig(SearchRouter.name,
              path: 'search',
              parent: HomeRoute.name,
              children: [
                _i8.RouteConfig(SearchRoute.name,
                    path: '', parent: SearchRouter.name),
                _i8.RouteConfig(ProfileRoute.name,
                    path: 'view-profile', parent: SearchRouter.name)
              ])
        ])
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i8.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.WalkInPage]
class WalkInRoute extends _i8.PageRouteInfo<void> {
  const WalkInRoute() : super(WalkInRoute.name, path: 'walk-in');

  static const String name = 'WalkInRoute';
}

/// generated route for
/// [_i3.RegistrationPage]
class RegistrationRoute extends _i8.PageRouteInfo<RegistrationRouteArgs> {
  RegistrationRoute({_i24.Key? key, required String username})
      : super(RegistrationRoute.name,
            path: 'registration',
            args: RegistrationRouteArgs(key: key, username: username));

  static const String name = 'RegistrationRoute';
}

class RegistrationRouteArgs {
  const RegistrationRouteArgs({this.key, required this.username});

  final _i24.Key? key;

  final String username;

  @override
  String toString() {
    return 'RegistrationRouteArgs{key: $key, username: $username}';
  }
}

/// generated route for
/// [_i4.UserNameCheckPage]
class UserNameCheckRoute extends _i8.PageRouteInfo<void> {
  const UserNameCheckRoute()
      : super(UserNameCheckRoute.name, path: 'username-check');

  static const String name = 'UserNameCheckRoute';
}

/// generated route for
/// [_i5.VerifyEmailPage]
class VerifyEmailRoute extends _i8.PageRouteInfo<void> {
  const VerifyEmailRoute() : super(VerifyEmailRoute.name, path: 'verify-email');

  static const String name = 'VerifyEmailRoute';
}

/// generated route for
/// [_i6.ForgotPasswordPage]
class ForgotPasswordRoute extends _i8.PageRouteInfo<void> {
  const ForgotPasswordRoute()
      : super(ForgotPasswordRoute.name, path: 'forgot-password');

  static const String name = 'ForgotPasswordRoute';
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
/// [_i8.EmptyRouterPage]
class NotificationRouter extends _i8.PageRouteInfo<void> {
  const NotificationRouter({List<_i8.PageRouteInfo>? children})
      : super(NotificationRouter.name,
            path: 'notification', initialChildren: children);

  static const String name = 'NotificationRouter';
}

/// generated route for
/// [_i8.EmptyRouterPage]
class SearchRouter extends _i8.PageRouteInfo<void> {
  const SearchRouter({List<_i8.PageRouteInfo>? children})
      : super(SearchRouter.name, path: 'search', initialChildren: children);

  static const String name = 'SearchRouter';
}

/// generated route for
/// [_i9.FeedsPage]
class FeedsRoute extends _i8.PageRouteInfo<void> {
  const FeedsRoute() : super(FeedsRoute.name, path: '');

  static const String name = 'FeedsRoute';
}

/// generated route for
/// [_i10.TextFeedsDetailsPage]
class TextFeedsDetailsRoute
    extends _i8.PageRouteInfo<TextFeedsDetailsRouteArgs> {
  TextFeedsDetailsRoute({_i24.Key? key, required _i25.TextPost posts})
      : super(TextFeedsDetailsRoute.name,
            path: ':text-feed',
            args: TextFeedsDetailsRouteArgs(key: key, posts: posts));

  static const String name = 'TextFeedsDetailsRoute';
}

class TextFeedsDetailsRouteArgs {
  const TextFeedsDetailsRouteArgs({this.key, required this.posts});

  final _i24.Key? key;

  final _i25.TextPost posts;

  @override
  String toString() {
    return 'TextFeedsDetailsRouteArgs{key: $key, posts: $posts}';
  }
}

/// generated route for
/// [_i11.ComicFeedsDetailsPage]
class ComicFeedsDetailsRoute
    extends _i8.PageRouteInfo<ComicFeedsDetailsRouteArgs> {
  ComicFeedsDetailsRoute({_i24.Key? key, required _i26.ComicPost posts})
      : super(ComicFeedsDetailsRoute.name,
            path: ':comic-feed',
            args: ComicFeedsDetailsRouteArgs(key: key, posts: posts));

  static const String name = 'ComicFeedsDetailsRoute';
}

class ComicFeedsDetailsRouteArgs {
  const ComicFeedsDetailsRouteArgs({this.key, required this.posts});

  final _i24.Key? key;

  final _i26.ComicPost posts;

  @override
  String toString() {
    return 'ComicFeedsDetailsRouteArgs{key: $key, posts: $posts}';
  }
}

/// generated route for
/// [_i12.BooksDetailsPage]
class BooksDetailsRoute extends _i8.PageRouteInfo<BooksDetailsRouteArgs> {
  BooksDetailsRoute(
      {_i24.Key? key,
      _i25.TextPost? posts,
      String? reImagined,
      required bool isReImaginedAvailable})
      : super(BooksDetailsRoute.name,
            path: ':booksId',
            args: BooksDetailsRouteArgs(
                key: key,
                posts: posts,
                reImagined: reImagined,
                isReImaginedAvailable: isReImaginedAvailable));

  static const String name = 'BooksDetailsRoute';
}

class BooksDetailsRouteArgs {
  const BooksDetailsRouteArgs(
      {this.key,
      this.posts,
      this.reImagined,
      required this.isReImaginedAvailable});

  final _i24.Key? key;

  final _i25.TextPost? posts;

  final String? reImagined;

  final bool isReImaginedAvailable;

  @override
  String toString() {
    return 'BooksDetailsRouteArgs{key: $key, posts: $posts, reImagined: $reImagined, isReImaginedAvailable: $isReImaginedAvailable}';
  }
}

/// generated route for
/// [_i13.ComicDetailsPage]
class ComicDetailsRoute extends _i8.PageRouteInfo<void> {
  const ComicDetailsRoute() : super(ComicDetailsRoute.name, path: ':comicId');

  static const String name = 'ComicDetailsRoute';
}

/// generated route for
/// [_i14.TextPostPage]
class TextPostRoute extends _i8.PageRouteInfo<void> {
  const TextPostRoute() : super(TextPostRoute.name, path: ':editors');

  static const String name = 'TextPostRoute';
}

/// generated route for
/// [_i15.ComicPostPage]
class ComicPostRoute extends _i8.PageRouteInfo<void> {
  const ComicPostRoute() : super(ComicPostRoute.name, path: ':comic-posts');

  static const String name = 'ComicPostRoute';
}

/// generated route for
/// [_i16.ProfilePage]
class ProfileRoute extends _i8.PageRouteInfo<ProfileRouteArgs> {
  ProfileRoute({_i24.Key? key, required String userId})
      : super(ProfileRoute.name,
            path: 'view-profile',
            args: ProfileRouteArgs(key: key, userId: userId));

  static const String name = 'ProfileRoute';
}

class ProfileRouteArgs {
  const ProfileRouteArgs({this.key, required this.userId});

  final _i24.Key? key;

  final String userId;

  @override
  String toString() {
    return 'ProfileRouteArgs{key: $key, userId: $userId}';
  }
}

/// generated route for
/// [_i17.CommentTextPage]
class CommentTextRoute extends _i8.PageRouteInfo<CommentTextRouteArgs> {
  CommentTextRoute({_i24.Key? key, required _i25.TextPost textPost})
      : super(CommentTextRoute.name,
            path: 'comment-text',
            args: CommentTextRouteArgs(key: key, textPost: textPost));

  static const String name = 'CommentTextRoute';
}

class CommentTextRouteArgs {
  const CommentTextRouteArgs({this.key, required this.textPost});

  final _i24.Key? key;

  final _i25.TextPost textPost;

  @override
  String toString() {
    return 'CommentTextRouteArgs{key: $key, textPost: $textPost}';
  }
}

/// generated route for
/// [_i18.CommentComicPage]
class CommentComicRoute extends _i8.PageRouteInfo<CommentComicRouteArgs> {
  CommentComicRoute({_i24.Key? key, required _i26.ComicPost comicPost})
      : super(CommentComicRoute.name,
            path: 'comment-comic',
            args: CommentComicRouteArgs(key: key, comicPost: comicPost));

  static const String name = 'CommentComicRoute';
}

class CommentComicRouteArgs {
  const CommentComicRouteArgs({this.key, required this.comicPost});

  final _i24.Key? key;

  final _i26.ComicPost comicPost;

  @override
  String toString() {
    return 'CommentComicRouteArgs{key: $key, comicPost: $comicPost}';
  }
}

/// generated route for
/// [_i19.ReImaginedPage]
class ReImaginedRoute extends _i8.PageRouteInfo<ReImaginedRouteArgs> {
  ReImaginedRoute(
      {_i24.Key? key,
      required _i25.TextPost textPost,
      required _i27.ReImaginedBloc reImaginedBloc})
      : super(ReImaginedRoute.name,
            path: ':reImagined',
            args: ReImaginedRouteArgs(
                key: key, textPost: textPost, reImaginedBloc: reImaginedBloc));

  static const String name = 'ReImaginedRoute';
}

class ReImaginedRouteArgs {
  const ReImaginedRouteArgs(
      {this.key, required this.textPost, required this.reImaginedBloc});

  final _i24.Key? key;

  final _i25.TextPost textPost;

  final _i27.ReImaginedBloc reImaginedBloc;

  @override
  String toString() {
    return 'ReImaginedRouteArgs{key: $key, textPost: $textPost, reImaginedBloc: $reImaginedBloc}';
  }
}

/// generated route for
/// [_i20.EditProfilePage]
class EditProfileRoute extends _i8.PageRouteInfo<EditProfileRouteArgs> {
  EditProfileRoute({_i24.Key? key, required _i28.ProfileBloc profileBloc})
      : super(EditProfileRoute.name,
            path: ':profileId',
            args: EditProfileRouteArgs(key: key, profileBloc: profileBloc));

  static const String name = 'EditProfileRoute';
}

class EditProfileRouteArgs {
  const EditProfileRouteArgs({this.key, required this.profileBloc});

  final _i24.Key? key;

  final _i28.ProfileBloc profileBloc;

  @override
  String toString() {
    return 'EditProfileRouteArgs{key: $key, profileBloc: $profileBloc}';
  }
}

/// generated route for
/// [_i21.SettingsPage]
class SettingsRoute extends _i8.PageRouteInfo<void> {
  const SettingsRoute() : super(SettingsRoute.name, path: ':settings');

  static const String name = 'SettingsRoute';
}

/// generated route for
/// [_i22.NotificationPage]
class NotificationRoute extends _i8.PageRouteInfo<void> {
  const NotificationRoute() : super(NotificationRoute.name, path: '');

  static const String name = 'NotificationRoute';
}

/// generated route for
/// [_i23.SearchPage]
class SearchRoute extends _i8.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: '');

  static const String name = 'SearchRoute';
}
