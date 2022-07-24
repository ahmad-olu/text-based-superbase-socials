// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'auth/confirm_registration/application/confirm_reg_form_cubit/confirm_reg_form_cubit.dart'
    as _i20;
import 'auth/core/application/auth_bloc/auth_bloc.dart' as _i18;
import 'auth/core/core.dart' as _i3;
import 'auth/core/infrastruction/aws_auth_facade.dart' as _i4;
import 'auth/registration/application/registration_bloc/registration_bloc.dart'
    as _i14;
import 'auth/walk_in/application/forgot_password_cubit/forgot_password_cubit.dart'
    as _i26;
import 'auth/walk_in/application/walk_in_form_cubit/walk_in_form_cubit.dart'
    as _i17;
import 'comments/application/bloc/comments_bloc.dart' as _i19;
import 'core/themes/application/theme_bloc/theme_bloc.dart' as _i16;
import 'editor/application/creat_rewrite_post_cubit/create_rewrite_post_cubit.dart'
    as _i22;
import 'editor/application/create_text_post_cubit/create_text_post_cubit.dart'
    as _i23;
import 'feeds/application/feed_bloc/feed_bloc.dart' as _i25;
import 'feeds/application/like_post_cubit/liked_post_cubit.dart' as _i11;
import 'feeds/application/search_cubit/search_cubit.dart' as _i15;
import 'notification/application/bloc/notifications_bloc.dart' as _i12;
import 'notification/domain/i_notifications.dart' as _i5;
import 'notification/infrastructure/aws_notification_repository.dart' as _i6;
import 'post/application/cubit/picture_post_cubit.dart' as _i21;
import 'post/domain/i_post_repository.dart' as _i7;
import 'post/infrastructure/aws_post_repository.dart' as _i8;
import 'profile/application/edit_profile_cubit/edit_profile_cubit.dart' as _i24;
import 'profile/application/profile_bloc/profile_bloc.dart' as _i13;
import 'profile/infrastructure/aws_user_repository.dart' as _i10;
import 'profile/profile.dart' as _i9; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.IAuthFacade>(() => _i4.AwsAuthFacade());
  gh.lazySingleton<_i5.INotificationRepository>(
      () => _i6.AwsNotificationRepository());
  gh.lazySingleton<_i7.IPostRepository>(() => _i8.AwsPostRepository());
  gh.lazySingleton<_i9.IUserRepository>(() => _i10.AwsUserRepository());
  gh.factory<_i11.LikedPostCubit>(() =>
      _i11.LikedPostCubit(get<_i7.IPostRepository>(), get<_i3.AuthBloc>()));
  gh.factory<_i12.NotificationsBloc>(() => _i12.NotificationsBloc(
      get<_i5.INotificationRepository>(), get<_i3.AuthBloc>()));
  gh.factory<_i13.ProfileBloc>(() => _i13.ProfileBloc(
      get<_i9.IUserRepository>(),
      get<_i3.AuthBloc>(),
      get<_i7.IPostRepository>(),
      get<_i11.LikedPostCubit>()));
  gh.factory<_i14.RegistrationBloc>(
      () => _i14.RegistrationBloc(get<_i3.IAuthFacade>()));
  gh.factory<_i15.SearchCubit>(
      () => _i15.SearchCubit(get<_i9.IUserRepository>()));
  gh.factory<_i16.ThemeBloc>(() => _i16.ThemeBloc());
  gh.factory<_i17.WalkInFormCubit>(
      () => _i17.WalkInFormCubit(get<_i3.IAuthFacade>()));
  gh.factory<_i18.AuthBloc>(() => _i18.AuthBloc(get<_i3.IAuthFacade>()));
  gh.factory<_i19.CommentsBloc>(
      () => _i19.CommentsBloc(get<_i7.IPostRepository>(), get<_i3.AuthBloc>()));
  gh.factory<_i20.ConfirmRegFormCubit>(() => _i20.ConfirmRegFormCubit(
      get<_i3.IAuthFacade>(), get<_i14.RegistrationBloc>()));
  gh.factory<_i21.CreatePicturePostCubit>(() => _i21.CreatePicturePostCubit(
      get<_i7.IPostRepository>(), get<_i3.AuthBloc>()));
  gh.factory<_i22.CreateRewritePostCubit>(() => _i22.CreateRewritePostCubit(
      get<_i7.IPostRepository>(), get<_i3.AuthBloc>()));
  gh.factory<_i23.CreateTextPostCubit>(() => _i23.CreateTextPostCubit(
      get<_i7.IPostRepository>(), get<_i3.AuthBloc>()));
  gh.factory<_i24.EditProfileCubit>(() => _i24.EditProfileCubit(
      get<_i9.IUserRepository>(), get<_i9.ProfileBloc>()));
  gh.factory<_i25.FeedBloc>(() => _i25.FeedBloc(get<_i7.IPostRepository>(),
      get<_i3.AuthBloc>(), get<_i11.LikedPostCubit>()));
  gh.factory<_i26.ForgotPasswordCubit>(
      () => _i26.ForgotPasswordCubit(get<_i3.IAuthFacade>()));
  return get;
}
