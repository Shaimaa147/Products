//
//  ProductUsecase.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 02/04/2024.
//

import Foundation
class GetProductsUseCase {
    
    var repo: ProductRemoteRepositoryProtocol = ProductRemoteRepository()
    
    func execute() async throws -> [ProductModel] {
            let recievedProducts = try await repo.getAllProducts()
            return recievedProducts
    }
}
