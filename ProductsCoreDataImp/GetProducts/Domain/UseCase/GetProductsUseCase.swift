//
//  ProductUsecase.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 02/04/2024.
//

import Foundation
import Factory

class GetProductsUseCase {
    @Injected(\.getProductsRepository) private var repo
//    var repo: GetProductsRepositoryProtocol = GetProductsRepository()
    func execute() async throws -> [ProductModel] {
        let recievedProducts = try await repo.getAllProducts()
        for product in recievedProducts {
            try repo.saveProduct(product: product)
        }
        return recievedProducts
    }
}
