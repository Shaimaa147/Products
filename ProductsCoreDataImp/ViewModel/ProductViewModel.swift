//
//  ProductViewModel.swift
//  ProductsCoreDataImp
//
//  Created by Shaimaa Mohammed on 02/04/2024.
//

import Foundation
import UtilityPackage

final class ProductViewModel: ObservableObject {
    @Published var products: [ProductModel] = []
    let getProductsUsecase = GetProductsUseCase()
    let saveProductUsecase = SaveProductUseCase()
    func getAllProducts() {
        Task {
            do {
                print("Inside ViewModel TASK")
                products = try await getProductsUsecase.execute()
                for product in products {
                    print("\(String(describing: product.title!)) costs \(String(describing: product.price!))$")
                }
            } catch {
                // swiftlint:disable:next force_cast
                print((error as! NetworkError).errorDescription)
            }
        }
        saveProducts()
    }
    func saveProducts() {
        do {
            for product in products {
                try saveProductUsecase.execute(product: product)
            }
        } catch {
            print("Error saving Product : \(error.localizedDescription)")
        }
    }
}
