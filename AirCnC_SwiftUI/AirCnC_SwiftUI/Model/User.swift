//
//  User.swift
//  AirCnC-SwiftUI
//
//  Created by Ted Kim on 2022/08/08.
//

import Foundation

class User: Identifiable {
    var id = UUID()
    
    var name: String
    var image: String?
    // 생성자
    init(name: String, image: String?) {
        self.name = name
        self.image = image
    }
    
    // 미리 생성한 유저 정보
    static let ggamdi = User(name: "깜디", image:"ggamdi")
    static let franky = User(name: "프랭키", image:"franky")
    static let goyangci = User(name: "고양씨", image:"goyangc")
    static let popo = User(name: "뽀뽀", image:"popo")
    
}
