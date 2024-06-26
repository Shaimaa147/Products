//
//  GetProductsRemoteDS.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 17/04/2024.
//

import Foundation

protocol GetProductsRemoteDSProtocol: GetProductsRepositoryProtocol {
    func getAllProducts() async throws -> [ProductModel]
}
