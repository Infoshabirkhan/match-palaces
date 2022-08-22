import 'package:bloc/bloc.dart';

class BottomCubit extends Cubit<int> {
  BottomCubit() : super(0);
  void setIndex(int index){
    emit(index);
  }

}
