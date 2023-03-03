//
//  Explorer.swift
//  AirCnC_SwiftUI
//
//  Created by Ted Kim on 2023/01/28.
//

import SwiftUI

struct Explorer: View {
    
    @EnvironmentObject var store: Store
    
    var body: some View {
        
        NavigationView {
            List(store.products) { product in
                NavigationLink(destination: ContentView(product: product) ) {
                    ProductRow(product: product)
                }
            }
            .navigationBarTitle("AirCnC")
        }
    }
}


struct Explorer_Previews: PreviewProvider {
    static var previews: some View {
        Explorer()
            .environmentObject(Store())
    }
}
