//
//  Store.swift
//  AirCnC-SwiftUI
//
//  Created by Ted Kim on 2022/08/08.
//

import Foundation

final class Store: ObservableObject {
    @Published var products: [Product]
    @Published var likedProducts: [Product] = []
    
    func likedProducts(product: [Product]) -> [Product] {
        let likedProducts = product.filter({ $0.isLiked })
        return likedProducts
    }
    
    func toggleLike(of product: Product) {
        guard let indexOfProduct = products.firstIndex(of: product) else { return }
        products[indexOfProduct].isLiked.toggle()

        // likedProducts에 추가하기
        if products[indexOfProduct].isLiked {
            likedProducts.append(product)
        }
        // likedProducts에서 삭제하기
        else {
            guard let indexOfProduct = likedProducts.firstIndex(of: product) else { return }
            likedProducts.remove(at: indexOfProduct)
        }
    }
    
    // MARK: Initialization
    
    init() {
        self.products = [
            Product(name: "ÄLEBY", thumbnail: "aleby",
                    detailImage: ["aleby_1", "aleby_2", "aleby_3", "aleby_4", "aleby_5", "aleby_6", "aleby_7"],
                    price: 34000, size: Size(w: 86, d: 88, h: 101),
                    user: User.ggamdi),
            Product(name: "BROMMÖ", thumbnail: "brommo",
                    detailImage: ["brommo_1", "brommo_2", "brommo_3", "brommo_4", "brommo_5"],
                    price: 8000, size: Size(w: 48, d: 92, h: 89),
                    user: User.franky),
            Product(name: "EKEDALEN", thumbnail: "ekedalen",
                    detailImage: ["ekedalen_1", "ekedalen_2", "ekedalen_3", "ekedalen_4", "ekedalen_5"],
                    price: 6000, size: Size(w: 43, d: 51, h: 95),
                    user: User.goyangci),
            Product(name: "HATTEFJÄLL", thumbnail: "hattefjall",
                    detailImage: ["hattefjall_1", "hattefjall_2", "hattefjall_3", "hattefjall_4", "hattefjall_5"],
                    price: 23000, size: Size(w: 68, d: 68, h: 110),
                    user: User.franky),
            Product(name: "MARKUS", thumbnail: "markus",
                    detailImage: ["markus_1", "markus_2", "markus_3", "markus_4", "markus_5", "markus_6", "markus_7"],
                    price: 20000, size: Size(w: 62, d: 60, h: 140),
                    user: User.popo),
            Product(name: "MILLBERGET", thumbnail: "millberget",
                    detailImage: ["millberget_1", "millberget_2", "millberget_3", "millberget_4", "millberget_5", "millberget_6"],
                    price: 8000, size: Size(w: 52, d: 65, h: 123),
                    user: User.goyangci),
            Product(name: "NORDMYRA", thumbnail: "nordmyra",
                    detailImage: ["nordmyra_1", "nordmyra_2", "nordmyra_3"],
                    price: 5000, size: Size(w: 45, d: 48, h: 80),
                    user: User.popo),
            Product(name: "NORRÅKER", thumbnail: "norraker",
                    detailImage: ["norraker_1", "norraker_2", "norraker_3", "norraker_4", "norraker_5", "norraker_6"],
                    price: 8000, size: Size(w: 41, d: 50, h: 81),
                    user: User.ggamdi),
            Product(name: "TUNHOLMEN", thumbnail: "tunholmen",
                    detailImage: ["tunholmen_1", "tunholmen_2", "tunholmen_3", "tunholmen_4", "tunholmen_5"],
                    price: 8000, size: Size(w: 55, d: 55, h: 78),
                    user: User.ggamdi),
            Product(name: "YPPERLIG", thumbnail: "ypperlig",
                    detailImage: ["ypperlig_1", "ypperlig_2", "ypperlig_3", "ypperlig_4", "ypperlig_5", "ypperlig_6", "ypperlig_7"],
                    price: 8000, size: Size(w: 55, d: 51, h: 83),
                    user: User.popo)
        ]
    }
}
