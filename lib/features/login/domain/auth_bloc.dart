 import 'package:flutter/cupertino.dart';
import 'package:untitled1/core/api/errors/errors.dart';
import 'package:untitled1/features/login/domain/login_repository.dart';

import 'package:blocer/blocer.dart';
import '../../../core/api/core_models/base_result_model.dart';

import '../data/login_request_model.dart';
import '../data/login_response_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';



class AuthCubit extends BlocerCubit {


  login({required String userName , required String password}) async {

    emit(BlocerLoading());
    try {

     var res= await LoginRepository.login(LoginRequestModel(
        username: userName,
        password: password
      ));

     if(res is LoginResponseModel){

        String token = res.token.toString();
       emit(BlocerLoaded(data: res));

     }
     else if(res is UnauthorizedError){

       emit(BlocerError(error: res.message ));

     }

    }  catch (e) {

      emit(BlocerError(error: e));
    }
  }



}
