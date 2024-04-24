//
//  CreateProductRemoteDS.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 18/04/2024.
//

import Foundation
import UtilityPackage

class CreateProductRemoteDS: CreateProductRemoteDSProtocol {
    func createProduct(request: APIRequestProtocol) async throws -> ProductModel {
        return try await Shared.apiManager.perform(
            apiRequest: request,
            providerType: Shared.provider,
            outputType: ProductModel.self
        )
    }
}
