//
//  ProductRepository.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 02/04/2024.
//

import Foundation
protocol ProductRemoteRepositoryProtocol{
    func getAllProducts() async throws -> [ProductModel]
    //    func createProduct(product: ProductModel) -> ProductResponse
}

class ProductRemoteRepository: ProductRemoteRepositoryProtocol {
    
    var dataSource: ProductDataSource = ProductDataSourceImplementation()
    
    func getAllProducts() async throws -> [ProductModel] {
        let productsResponse =  try await dataSource.getAllProducts()
        return productsResponse
    }
}
