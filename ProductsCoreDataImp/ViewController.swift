//
//  ViewController.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 02/04/2024.
//

import UIKit

class ViewController: UIViewController {
    
    var productVM = ProductViewModel()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = .gray
        let rect = CGRect(x: 50, y: 500, width: 250, height: 250)
        let newView = UIView(frame: rect)
        newView.backgroundColor = .cyan
        self.view.addSubview(newView)
        
        configureViewModel()
        print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask))
    }
    
    private func configureViewModel() {

        productVM.getAllProducts()

    }


}

