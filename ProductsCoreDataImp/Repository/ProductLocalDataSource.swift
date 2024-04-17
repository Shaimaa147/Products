////
////  ProductLocalDataSource.swift
////  ProductsCoreDataImp
////
////  Created by Shaimaa Mohammed on 02/04/2024.
////
//
//import Foundation
//import CoreData
//
//protocol ProductLocalDataSource {
//    func saveProduct(product: ProductModel) throws
//}
//
//class ProductLocalDataSourceImplementation: ProductLocalDataSource {
//    func saveProduct(product: ProductModel) throws {
//        print("LOCAL Product data source ")
//        let newProduct = Products(context: Shared.context)
//        newProduct.id = Int32(product.id ?? 0)
//        newProduct.price = Int32(product.price ?? 0)
//        newProduct.title = product.title ?? ""
//        newProduct.pDescription = product.description ?? ""
//        try Shared.context.save()
//    }
//}
