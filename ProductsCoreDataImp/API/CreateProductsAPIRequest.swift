//
//  CreateProductsAPIRequest.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 18/04/2024.
//

import Foundation
import UtilityPackage

class CreateProductsAPIRequest: APIRequestProtocol {
    var baseURL: String
    var path: String
    var method: UtilityPackage.HTTPMethod
    var header: [String: String]?
    var queryParams: [String: Any]?


    init(title: String, price: String) {
        baseURL = "https://api.escuelajs.co"
        path = "/api/v1/products"
        method = HTTPMethod.POST
        header = ["Content-type": "application/json"]
        queryParams = ["title": title, "price": price]
    }
}
