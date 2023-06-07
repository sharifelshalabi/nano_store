import 'package:flutter/cupertino.dart';
import 'package:untitled1/core/api/errors/errors.dart';
import 'package:untitled1/features/login/domain/login_repository.dart';

import 'package:blocer/blocer.dart';
import 'package:untitled1/features/products/domain/products_repository.dart';
import '../../../core/api/core_models/base_result_model.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/products_list_model.dart';

class ProductsCubit extends BlocerCubit {
  getProducts() async {
    emit(BlocerLoading());
    try {
      var res = await ProductsRepository.getProducts();
      if (res is ProductsResponseModel) {
        emit(BlocerLoaded(data: res));
      }
    } catch (e) {
      emit(BlocerError(error: e));
    }
  }
}
