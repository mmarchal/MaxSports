import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:max_sports/data/backend.dart';
import 'package:max_sports/data/states/type_activite_state.dart';

class TypeActiviteBloc extends Cubit<TypeActiviteState> {
  TypeActiviteBloc() : super(TypeActiviteState.initial());

  void idle() => emit(
        TypeActiviteState.initial(),
      );

  void getAllTypes() async {
    emit(
      TypeActiviteState.getDatasLoading(),
    );

    final response = await BackEnd().getTypesActivites();

    if (response.isSuccess && response.data!.isNotEmpty) {
      emit(
        TypeActiviteState.getDatasLoaded(
          types: response.data!,
        ),
      );
    } else {
      emit(
        TypeActiviteState.failed(
          error: response.error,
        ),
      );
    }
  }
}
