//
//  SaveProductUsecase.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 02/04/2024.
//

import Foundation
class SaveProductUseCase {
    
    var repo: ProductLocalRepositoryProtocol = ProductLocalRepository()
    
    func execute(_product: ProductModel) throws -> Void {
            try repo.saveProduct(_product: _product)
    }
}
