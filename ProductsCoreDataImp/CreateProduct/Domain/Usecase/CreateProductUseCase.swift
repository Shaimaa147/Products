//
//  CreateProductUseCase.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 18/04/2024.
//

import Foundation
import UtilityPackage

class CreateProductUseCase {
    var repo: CreateProductRepository = CreateProductRepository()
    func execute(request: APIRequestProtocol) async throws {
        try await repo.createProduct(request: request)
    }
}
