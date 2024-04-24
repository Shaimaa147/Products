//
//  BaseViewModel.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 24/04/2024.
//

import Foundation

protocol BaseViewModel {
    func startSynching()
    var changeHandler: ((BaseViewModelChange) -> Void)? {get set}
    func emit(_ change: BaseViewModelChange)
}

enum BaseViewModelChange {
    case loaderStart
    case loaderEnd
    case updateDataModel
    case error(message: String)
}
