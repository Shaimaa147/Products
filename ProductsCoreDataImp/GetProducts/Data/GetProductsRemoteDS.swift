//
//  GetProductsRemoteDS.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 17/04/2024.
//

import Foundation

class GetProductsRemoteDS: GetProductsRemoteDSProtocol {
    func getAllProducts() async throws -> [ProductModel] {
        // swiftlint:disable:next line_length
        return try await Shared.apiManager.perform(apiRequest: GetProductsAPIRequest.init(), providerType: Shared.provider, outputType: [ProductModel].self)
    }
}
