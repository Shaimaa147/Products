//
//  SaveProductUsecase.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 02/04/2024.
//

import Foundation
class SaveProductUseCase {
    var repo: ProductLocalRepositoryProtocol = ProductLocalRepository()
    func execute(product: ProductModel) throws {
            try repo.saveProduct(product: product)
    }
}
