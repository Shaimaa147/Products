//
//  BaseView.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 24/04/2024.
//

import Foundation

protocol BaseView: AnyObject {
       func didSucceed()
       func startLoading()
       func stopLoading()
       func didFail(with error: Error)
}
