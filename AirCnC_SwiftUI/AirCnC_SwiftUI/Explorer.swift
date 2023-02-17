//
//  Explorer.swift
//  AirCnC_SwiftUI
//
//  Created by Ted Kim on 2023/01/28.
//

import SwiftUI

struct Product: Identifiable {
    let id = UUID()
    var userName: String
    var productName: String
    var productImage: String
}

struct Explorer: View {
    
    var products = [
        Product(userName: "깜디", productName: "ÄLEBY", productImage: "aleby"),
        Product(userName: "프랭키", productName: "BROMMÖ", productImage: "brommo"),
        Product(userName: "고양씨", productName: "EKEDALEN", productImage: "ekedalen"),
        Product(userName: "프랭키", productName: "HATTEFJÄLL", productImage: "hattefjall"),
        Product(userName: "뽀뽀", productName: "MARKUS", productImage: "markus"),
        Product(userName: "고양씨", productName: "MILLBERGET", productImage: "millberget"),
        Product(userName: "뽀뽀", productName: "NORDMYRA", productImage: "nordmyra"),
        Product(userName: "깜디", productName: "NORRÅKER", productImage: "norraker"),
        Product(userName: "깜디", productName: "TUNHOLMEN", productImage: "tunholmen"),
        Product(userName: "뽀뽀", productName: "YPPERLIG", productImage: "ypperlig"),
    ]
    
    var body: some View {
        List(products) { product in
            ProductRow(product: product)
        }
    }
}

struct Explorer_Previews: PreviewProvider {
    static var previews: some View {
        Explorer()
    }
}
