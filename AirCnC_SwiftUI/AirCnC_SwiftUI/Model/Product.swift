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
    
    var isLiked: Bool = false
}

extension Product: Equatable {
    static func == (lhs: Product, rhs: Product) -> Bool {
        return lhs.id == rhs.id
    }
}

typealias Size = (w:Int, d:Int, h:Int)
