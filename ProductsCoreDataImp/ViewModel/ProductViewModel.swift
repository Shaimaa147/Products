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
                products = try await getProductsUsecase.execute()
                
                for product in products {
                    print("\(String(describing: product.title!)) costs \(String(describing: product.price!))$")
                }
               
            } catch NetworkError.invalidUrl {
                print("Invalid URL. \(NetworkError.invalidUrl.localizedDescription)")
            } catch NetworkError.invalidData {
                print("Invalid DATA.")
            } catch NetworkError.noInternet {
                print("NO Internet. \(NetworkError.noInternet.localizedDescription)")
            } catch NetworkError.requestFailed {
                print("Request failed.")
            } catch {
                print ("Unexpected Error" + "\(error.localizedDescription)")
            }
            print("6 UserVM login inside Task end")
        }
        
        saveProducts()
        print("3 UserVM login after Task")
    }
    
    func saveProducts() {
        do {
            for product in products {
                try saveProductUsecase.execute(_product: product)
            }
        } catch {
            print("Error saving Product : \(error)")
        }
    }
    
}
