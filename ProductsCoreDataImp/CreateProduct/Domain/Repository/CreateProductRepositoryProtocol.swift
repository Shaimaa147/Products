//
//  CreateProductRepositoryProtocol.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 18/04/2024.
//

import Foundation
import UtilityPackage

protocol CreateProductRepositoryProtocol {
    func createProduct(request: APIRequestProtocol) async throws -> ProductModel
}
