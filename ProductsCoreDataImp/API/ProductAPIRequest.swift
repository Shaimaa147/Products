////
////  ProductAPIRequest.swift
////  ProductsCoreDataImp
////
////  Created by Shaimaa Mohammed on 02/04/2024.
////
//
//import Foundation
//import UtilityPackage
//
//enum ProductAPIRequest: APIRequestProtocol {
//    case getAll
//    case create
//
//    var header: [String: String]? {
//        let header = ["Content-type": "application/json"]
//        switch self {
//        case .getAll:
//            return header
//        default:
//            return header
//        }
//    }
//    var queryParams: [String: Any]? {
//        switch self {
//        case .getAll:
//            return nil
//        default:
//            return nil
//        }
//    }
//    var baseURL: String {
//        switch self {
//        case .getAll:
//            return "https://api.escuelajs.co"
//        default:
//            return "https://api.escuelajs.co"
//        }
//    }
//    var path: String {
//        switch self {
//        case .getAll:
//            return "/api/v1/products"
//        default:
//            return "/api/v1/products"
//        }
//    }
//    var method: HTTPMethod {
//        switch self {
//        case .getAll:
//            return .GET
//        case .create:
//            return .POST
//        }
//    }
//}
