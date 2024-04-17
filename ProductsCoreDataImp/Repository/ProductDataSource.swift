////
////  ProductDataSource.swift
////  ProductsCoreDataImp
////
////  Created by Shaimaa Mohammed on 02/04/2024.
////
//
//import Foundation
//protocol ProductDataSource {
//    func getAllProducts() async throws -> [ProductModel]
//}
//
//class ProductDataSourceImplementation: ProductDataSource {
//    func getAllProducts() async throws -> [ProductModel] {
//        // swiftlint:disable:next line_length
//        return try await Shared.apiManager.perform(apiRequest: GetProductsAPIRequest.init(), providerType: Shared.provider, outputType: [ProductModel].self)
//    }
//}
