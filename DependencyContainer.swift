//
//  DependencyInjection.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 23/04/2024.
//

import Foundation
import Factory

extension Container {
    var getProductsUseCase: Factory<GetProductsUseCase> {
        Factory(self) { GetProductsUseCase() }
    }
    var getProductsRemoteDS: Factory<GetProductsRemoteDSProtocol> {
        Factory(self) { GetProductsRemoteDS() }
    }
    var getProductsLocalDS: Factory<GetProductsLocalDSProtocol> {
        Factory(self) { GetProductsLocalDS() }
    }
    var getProductsRepository: Factory<GetProductsRepositoryProtocol> {
        Factory(self) { GetProductsRepository() }
    }
}
