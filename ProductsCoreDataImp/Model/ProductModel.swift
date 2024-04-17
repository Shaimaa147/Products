//
//  ProductModel.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 02/04/2024.
//

import Foundation

struct ProductModel: Codable {
    var id: Int?
    var title: String?
    var price: Int?
    var description: String?
    var images: [String]?

    enum CodingKeys: String, CodingKey {
        case id
        case title
        case price
        case description
        case images
    }
}
//    category {
//      id
//      name
//      image
//    }
