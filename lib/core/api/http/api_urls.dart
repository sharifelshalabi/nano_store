enum ApiMethods { getAll, get, delete, create, update }

class ApiURLs {
  ///with you app///
  static const String baseURL = 'https://fakestoreapi.com';

  ///auth
  static const String authenticateURL = '$baseURL/auth/login';
  static const String getProductsURL = '$baseURL/products';



}
