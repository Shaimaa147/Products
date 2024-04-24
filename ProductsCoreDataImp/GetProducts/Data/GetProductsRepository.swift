//
//  GetProductsRepository.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 17/04/2024.
//

import Foundation
import Factory

class GetProductsRepository: GetProductsRepositoryProtocol {
    @Injected(\.getProductsRemoteDS) private var remoteDataSource
    @Injected(\.getProductsLocalDS) private var localDataSource

//    var remoteDataSource: GetProductsRemoteDSProtocol = GetProductsRemoteDS()
//    var localDataSource: GetProductsLocalDSProtocol = GetProductsLocalDS()
    func getAllProducts() async throws -> [ProductModel] {
        if Shared.internetManager.isInternetConnectionAvailable() {
            let products = try await remoteDataSource.getAllProducts()
            return products
        } else {
            return try await localDataSource.getAllProducts()
        }
    }
    func saveProduct(product: ProductModel) throws {
        try  localDataSource.saveProduct(product: product)
    }
}
