//
//  GetProductsRepository.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 17/04/2024.
//

import Foundation

class GetProductsRepository: GetProductsRepositoryProtocol {
    var remoteDataSource: GetProductsRemoteDS = GetProductsRemoteDS()
    var localDataSource: GetProductsLocalDS = GetProductsLocalDS()
    func getAllProducts() async throws -> [ProductModel] {
        if Shared.internetManager.isInternetConnectionAvailable() {
            let products = try await remoteDataSource.getAllProducts()
            //            for product in products {
            //                try localDataSource.saveProduct(product: product)
            //            }
            return products
        } else {
            return try await localDataSource.getAllProducts()
        }
    }
    
    func saveProduct(product: ProductModel) throws {
        try  localDataSource.saveProduct(product: product)
    }
}
