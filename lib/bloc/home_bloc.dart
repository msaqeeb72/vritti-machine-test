import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machine_test/bloc/home_event.dart';
import 'package:machine_test/bloc/home_state.dart';
import 'package:machine_test/repo/home_repo.dart';

class HomeBloc extends Bloc<HomeEvent,HomeState>{
  HomeRepo homeRepo;
  HomeBloc(this.homeRepo):super(InitHomeState()){
    on<GetAllUserHomeEvent>(_getAllUser);
    on<DeleteUserHomeEvent>(_deleteUser);
    on<UpdateUserHomeEvent>(_updateUser);
    add(GetAllUserHomeEvent(false));
  }

  void _getAllUser(GetAllUserHomeEvent event,Emitter<HomeState> emit)async{
    if(event.fromRemote){
      final data = await homeRepo.getAllUsersFromRemote();
      final result = await homeRepo.insertAllUsers(data);
      if(result) {
        emit(UpdateAllUsersHomeState(data));
      }
    }else{
      final data = await homeRepo.getAllUsersFromDb();
      emit(UpdateAllUsersHomeState(data));
    }
  }

  void _updateUser(UpdateUserHomeEvent event,Emitter<HomeState> emit)async{
    final result = await homeRepo.updateUser(event.model);
    if(result != null){
      add(GetAllUserHomeEvent());
    }
  }

  void _deleteUser(DeleteUserHomeEvent event,Emitter<HomeState> emit)async{
    final result = await homeRepo.deleteUser(event.model);
    if(result){
        add(GetAllUserHomeEvent());
    }
  }
}