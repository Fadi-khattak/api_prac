part of 'products_controller_cubit.dart';

abstract class ProductsControllerState {
  const ProductsControllerState();
}

class ProductsControllerInitial extends ProductsControllerState {

}

class ProductsLoadingState extends ProductsControllerState {


}

class ProductsLoadedState extends ProductsControllerState {
  ProductsLoadedState(this.products);

  ProductsModel products;
}

class ErrorState extends ProductsControllerState {
  String message;
  ErrorState(this.message);
}
