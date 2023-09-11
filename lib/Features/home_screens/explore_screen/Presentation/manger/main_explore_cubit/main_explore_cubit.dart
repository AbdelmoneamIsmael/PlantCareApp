import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'main_explore_state.dart';

class MainExploreCubit extends Cubit<MainExploreState> {
  MainExploreCubit() : super(MainExploreInitial());
  static MainExploreCubit get(context) => BlocProvider.of(context);
  int currentScreen = 0;
  changeTapAndScreenValue(int newValue) {
    currentScreen = newValue;
    emit(MainExploreChangePages());
  }
}
