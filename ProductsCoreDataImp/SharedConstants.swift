//
//  SharedConstants.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 02/04/2024.
//

import Foundation
import UtilityPackage
import UIKit

enum Shared {
    static let internetManager: InternetConnectionManager = InternetConnectionManager()
    static let apiManager: NetworkManagerProtocol = APIManager.shared
    static let provider: APIRequestProviderProtocol = APIRequestProvider(internetManager: internetManager)
    static let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
}
