//
//  ProductUsecase.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 02/04/2024.
//

import Foundation
class GetProductsUseCase {
    var repo: GetProductsRepositoryProtocol = GetProductsRepository()
    func execute() async throws -> [ProductModel] {
        print("Inside USeCASE")
        let recievedProducts = try await repo.getAllProducts()
        return recievedProducts
    }
}
