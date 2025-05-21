import 'package:bnext/feature/bnext_product/bnext_product/data/datasources/product_remote_datasource.dart';
import 'package:bnext/feature/bnext_product/bnext_product/domain/repositories/impl/product_repository_impl.dart';
import 'package:bnext/feature/bnext_product/bnext_product/domain/repositories/product_repository.dart';
import 'package:bnext/feature/bnext_product/bnext_product/domain/usecases/get_products_usecase.dart';
import 'package:bnext/feature/bnext_product/bnext_product/presentation/bnext_product/cubit/product_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

//Tempat dependency injection. Ngatur siapa butuh siapa. Misalnya:


final sl = GetIt.instance;
void setupInjection() {
  // ✅ Cek apakah Dio sudah terdaftar
  if (!sl.isRegistered<Dio>()) {
    sl.registerLazySingleton(() => Dio());
  }

  // Data Sources
  sl.registerLazySingleton<ProductRemoteDatasource>(
      () => ProductRemoteDatasourceImpl(sl()));

  // Repositories
  sl.registerLazySingleton<ProductRepository>(
      () => ProductRepositoryImpl(sl()));

  // Use Cases
  sl.registerLazySingleton(() => GetProductsUseCase(sl()));

  // Cubit
  sl.registerFactory(() => ProductCubit(sl()));
}
