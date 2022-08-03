import 'package:bloc/bloc.dart';
import 'package:education/data/data.dart';
import 'package:education/modules/content/models/content.dart';
import 'package:education/modules/content/services/content_service.dart';
import 'package:equatable/equatable.dart';

part 'content_state.dart';

class ContentCubit extends Cubit<ContentState> {
  ContentCubit() : super(ContentInitial());

  final ContentService _contentService = ContentService.instance;

  Future<void> getContent() async {
    //TODO: add id here
    const id = 1;
    emit(ContentLoading());
    final response = await _contentService.getContentById(id: id);
    response.fold(onFailure, (content) => emit(ContentLoaded(content)));
  }

  void onFailure(Failure failure) => emit(ContentFailure(failure));
}
