//
//  LikedView.swift
//  AirCnC_SwiftUI
//
//  Created by Ted Kim on 2023/03/03.
//

import SwiftUI

struct LikedView: View {
    @EnvironmentObject var store: Store
    
    var body: some View {
        NavigationView {
            List(store.likedProducts) { product in
                ProductRow(product: product)
            }
            .navigationTitle("Liked Products")
        }
    }
}

struct LikedView_Previews: PreviewProvider {
    static var previews: some View {
        LikedView()
            .environmentObject(Store())
    }
}
