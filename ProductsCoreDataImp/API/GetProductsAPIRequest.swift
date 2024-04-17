//
//  ClassAPIRequest.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 17/04/2024.
//

import Foundation
import UtilityPackage

class GetProductsAPIRequest: APIRequestProtocol {
    var baseURL: String
    var path: String
    var method: UtilityPackage.HTTPMethod
    var header: [String : String]?
    var queryParams: [String : Any]?
    
    init() {
        baseURL = "https://api.escuelajs.co"
        path = "/api/v1/products"
        method = HTTPMethod.GET
        header = ["Content-type": "application/json"]
    }
}
