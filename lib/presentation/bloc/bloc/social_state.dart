part of 'social_bloc.dart';

@immutable
sealed class SocialState {}

final class SocialInitial extends SocialState {}


class FetchedState extends SocialState {
  final MediaList mediaModel;

  FetchedState({required this.mediaModel});
}
class FetchErrorState extends SocialState {
  final String msg;

  FetchErrorState({required this.msg});
}