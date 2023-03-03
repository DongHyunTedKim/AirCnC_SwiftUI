//
//  ProductRow.swift
//  AirCnC_SwiftUI
//
//  Created by Ted Kim on 2023/01/28.
//

import SwiftUI

struct ProductRow: View {
    
    let product: Product
    
    var body: some View {
        HStack {
            Image(product.thumbnail)
                .resizable()
                .frame(width: 40, height: 40)
            Text(product.name)
                .font(.title3)
            Spacer()
            Text(product.user.name)
                .font(.subheadline)
        }
        
    }
}

struct ProductRow_Previews: PreviewProvider {
    static var previews: some View {
        ProductRow(product: Store().products[0])
    }
}
