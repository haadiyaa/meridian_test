import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:meridian_test/data/model/mediamodel.dart';
import 'package:meridian_test/domain/repository/repository.dart';
import 'package:meta/meta.dart';

part 'social_event.dart';
part 'social_state.dart';

class SocialBloc extends Bloc<SocialEvent, SocialState> {
  final ApiRepository apiRepository = ApiRepository();
  SocialBloc() : super(SocialInitial()) {
    on<FetchDataEvent>(_fetchData);
  }

  Future<void> _fetchData(
      FetchDataEvent event, Emitter<SocialState> emit) async {
    MediaList mediaModel;
    try {
      final response = await apiRepository.fetchData();
      final data = jsonDecode(response.body);
      print(data);
      if (response.statusCode == 200) {
        mediaModel = MediaList.fromJson(data);
        emit(FetchedState(mediaModel: mediaModel));
        print('success');
      } else {
        print('error');
        emit(FetchErrorState(msg: 'Error Fetching Data'));
      }
    } catch (e) {
      print('exception : ${e.toString()}');
      emit(FetchErrorState(msg: e.toString()));
    }
  }
}
