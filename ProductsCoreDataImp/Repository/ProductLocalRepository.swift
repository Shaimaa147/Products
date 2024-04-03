//
//  ProductLocalRepository.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 02/04/2024.
//

import Foundation
protocol ProductLocalRepositoryProtocol{
    func saveProduct(_product: ProductModel) throws -> Void
    //    func createProduct(product: ProductModel) -> ProductResponse
}

class ProductLocalRepository: ProductLocalRepositoryProtocol {
    
    var dataSource: ProductLocalDataSource = ProductLocalDataSourceImplementation()
    
    func saveProduct(_product: ProductModel) throws -> Void {
        _ =  try  dataSource.saveProduct(product: _product)
        
    }
}
