//
//  ProductViewModel.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 02/04/2024.
//

import Foundation
import UtilityPackage
import Factory

protocol GetProductsViewModelProtocol : BaseViewModel{
    var products : [ProductModel] { get set }
}

final class ProductViewModel: BaseViewModel {
    @Injected(\.getProductsUseCase) private var service
    var products: [ProductModel] = [] {
        didSet {
            changeHandler?(.updateDataModel)
            //            self.bindClosureViewModelToController()
        }
    }
    //    var bindClosureViewModelToController : (() -> ()) = {}
    var changeHandler: ((BaseViewModelChange) -> Void)?
    func startSynching() {
        emit(.loaderStart)
        Task {
            do {
                print("Inside ViewModel TASK")
                self.products = try await service.execute()
                //                self.emit(.updateDataModel)
            } catch {
                // swiftlint:disable:next force_cast
                print((error as! NetworkError).errorDescription)
                // swiftlint:disable:next force_cast
                self.emit(.error(message: (error as! NetworkError).errorDescription))
            }
        }
    }
    func emit(_ change: BaseViewModelChange) {
        changeHandler?(change)
    }
}
