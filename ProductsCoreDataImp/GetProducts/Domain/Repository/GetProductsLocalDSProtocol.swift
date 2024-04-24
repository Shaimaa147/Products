//
//  GetProductsLocalDS.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 17/04/2024.
//

import Foundation

protocol GetProductsLocalDSProtocol: GetProductsRepositoryProtocol {
    func getAllProducts() throws -> [ProductModel]
    func saveProduct(product: ProductModel) throws
}
