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
            return try await remoteDataSource.getAllProducts()
        } else {
            return try await localDataSource.getAllProducts()
        }
    }
}
