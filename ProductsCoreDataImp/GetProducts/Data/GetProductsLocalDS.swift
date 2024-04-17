//
//  GetProductsLocalDS.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 17/04/2024.
//

import Foundation
import CoreData

class GetProductsLocalDS: GetProductsLocalDSProtocol {
    func getAllProducts() async throws -> [ProductModel] {
        let request: NSFetchRequest<Products> = Products.fetchRequest()
        let fetchedProducts = try Shared.context.fetch(request)
        var localProducts: [ProductModel] = []
        for item  in fetchedProducts {
            var product = ProductModel()
            product.id = Int(item.id)
            product.title = item.title
            product.price = Int(item.price)
            product.description = item.description
            localProducts.append(product)
        }
        return localProducts
    }
    
    func saveProduct(product: ProductModel) throws {
        print("LOCAL Product data source ")
        let newProduct = Products(context: Shared.context)
        newProduct.id = Int32(product.id ?? 0)
        newProduct.price = Int32(product.price ?? 0)
        newProduct.title = product.title ?? ""
        newProduct.pDescription = product.description ?? ""
        try Shared.context.save()
    }
}


