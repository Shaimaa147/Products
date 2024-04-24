//
//  BaseViewController.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 24/04/2024.
//

import Foundation
import UIKit

protocol BaseViewControllerProtocol {
    func bindViewModel()
    func setupUI()
}
public class BaseViewController: UIViewController {
    var viewModel: BaseViewModel?
    var loading : UIView?
      
    public func showSpinner(onView : UIView) {
        let ai = UIActivityIndicatorView.init(style: .large)
        ai.startAnimating()
        ai.center = onView.center
             
        DispatchQueue.main.async {
            onView.addSubview(ai)
        }
        loading = ai
    }
    
    override public func viewDidLayoutSubviews() {
        self.loading?.center = self.view.center
    }
    
    public func removeSpinner() {
        DispatchQueue.main.async {
            self.loading?.removeFromSuperview()
            self.loading = nil
        }
    }
    
}
