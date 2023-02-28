//
//  Product.swift
//  AirCnC_SwiftUI
//
//  Created by Ted Kim on 2023/01/28.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    
    var name: String
    var thumbnail: String // 썸네일 이미지
    var detailImage: [String]? // 상세 이미지는 없을 수도 있다.
    var price: Int
    var size: Size? // 크기 정보는 없을 수도 있다.
    var user: User
}

typealias Size = (w:Int, d:Int, h:Int)

let productSample: Product = Product(name: "MARKUS", thumbnail: "markus",
                                     detailImage: ["markus_1", "markus_2", "markus_3", "markus_4", "markus_5", "markus_6", "markus_7"],
                                     price: 20000, size: Size(w: 62, d: 60, h: 140),
                                     user: User.popo)
