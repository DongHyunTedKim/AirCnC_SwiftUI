//
//  AirCnC_SwiftUIApp.swift
//  AirCnC_SwiftUI
//
//  Created by Ted Kim on 2023/02/02.
//

import SwiftUI

@main
struct AirCnC_SwiftUIApp: App {
    
    @StateObject var store = Store()
    
    var body: some Scene {
        WindowGroup {
            MainView()
                .environmentObject(store)
        }
    }
}
