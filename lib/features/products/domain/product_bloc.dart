import 'package:blocer/blocer.dart';
import 'package:untitled1/features/products/domain/products_repository.dart';
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
