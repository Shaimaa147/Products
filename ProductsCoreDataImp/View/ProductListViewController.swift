//
//  ViewController.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 02/04/2024.
//

import UIKit
import UtilityPackage

class ProductListViewController: BaseViewController, BaseViewControllerProtocol {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var priceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        bindViewModel()
        setupUI()
    }
    func bindViewModel() {
        self.viewModel = ProductViewModel()
        self.viewModel?.changeHandler = {
            [unowned self] change in
            switch change {
            case .error(let message):
               // Error Pop-Up
                break
            case .loaderEnd:
                self.removeSpinner()
                break
            case .loaderStart:
                self.showSpinner(onView: self.view)
                break
            case .updateDataModel:
                updateUI()
                break
            }
        }
    }
    func setupUI() {
        self.viewModel?.startSynching()
    }

    private func updateUI() {
        print("updateUI")
        guard let productVM = (self.viewModel as? ProductViewModel) else { return }
        let product = productVM.products[0]
        guard let urlstring = product.images?[0] else { return }
        print(urlstring)
        let imageURL = URL(string: urlstring)
        DispatchQueue.main.async {
            // swiftlint:disable:next force_cast
            self.imageView.imageFrom(url: URL(string: urlstring)!)
            self.titleLabel.text = product.title
            self.priceLabel.text = String(describing: product.price)
        }
        productVM.emit(.loaderEnd)
    }
}
