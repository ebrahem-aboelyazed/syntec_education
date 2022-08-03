import 'package:bloc/bloc.dart';
import 'package:education/data/data.dart';
import 'package:education/modules/curriculum/models/curriculum.dart';
import 'package:education/modules/curriculum/services/curriculum_service.dart';
import 'package:equatable/equatable.dart';

part 'curriculum_state.dart';

class CurriculumCubit extends Cubit<CurriculumState> {
  CurriculumCubit() : super(CurriculumInitial());
  final CurriculumService _curriculumService = CurriculumService.instance;

  Future<void> getCurriculum({bool showLoading = true}) async {
    //TODO: add id here
    //final id = int.tryParse(Get.parameters['course_id']!);
    if (showLoading) {
      emit(CurriculumLoading());
    }
    final response = await _curriculumService.getCurriculum(id: 1);
    response.fold(
      onFailure,
      (curriculum) => emit(CurriculumLoaded(curriculum)),
    );
  }

  void onFailure(Failure failure) => emit(CurriculumFailure(failure));
}
