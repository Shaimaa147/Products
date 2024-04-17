//
//  ProductLocalRepository.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 02/04/2024.
//

import Foundation
protocol ProductLocalRepositoryProtocol {
    func saveProduct(product: ProductModel) throws
    //    func createProduct(product: ProductModel) -> ProductResponse
}

class ProductLocalRepository: ProductLocalRepositoryProtocol {
    var dataSource: ProductLocalDataSource = ProductLocalDataSourceImplementation()
    func saveProduct(product: ProductModel) throws {
       try  dataSource.saveProduct(product: product)
    }
}
