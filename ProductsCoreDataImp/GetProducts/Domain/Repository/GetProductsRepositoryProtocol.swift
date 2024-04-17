//
//  GetProductsRepositoryProtocol.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 17/04/2024.
//

import Foundation

protocol GetProductsRepositoryProtocol {
    func getAllProducts() async throws -> [ProductModel]
    //    func saveProduct(product: ProductModel) throws
}

extension GetProductsRepositoryProtocol {
    func saveProduct(product: ProductModel) throws {
        
    }
}
