//
//  CreateProdutRepository.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 18/04/2024.
//

import Foundation
import UtilityPackage

class CreateProductRepository: CreateProductRepositoryProtocol {
    var remoteDataSource: CreateProductRemoteDSProtocol = CreateProductRemoteDS()
    func createProduct(request: APIRequestProtocol) async throws -> ProductModel {
        if Shared.internetManager.isInternetConnectionAvailable() {
            return try await remoteDataSource.createProduct(request: request)
        }
        return ProductModel()
    }
}
