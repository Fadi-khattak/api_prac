import 'package:bloc/bloc.dart';
import 'package:cubit_restapi/models/products_model.dart';
import 'package:cubit_restapi/models/repository/products_repo.dart';

part 'products_controller_state.dart';

class ProductsControllerCubit extends Cubit<ProductsControllerState> {
  ProductsControllerCubit() : super(ProductsControllerInitial()){
    loadProducts();
  }
  loadProducts()async
  {

    try {
      emit(ProductsLoadingState());

      var res = await ProductsRepo.getData();

      emit(ProductsLoadedState(res!));
    }catch(e)
    {
      print(e.toString());
      emit(ErrorState(e.toString()));
    }

  }
}
