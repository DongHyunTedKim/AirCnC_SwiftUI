//
//  ContentView.swift
//  AirCnC_SwiftUI
//
//  Created by Ted Kim on 2023/01/28.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .leading){
            productImage
            productDescription
        }
    }
}

private extension ContentView {
    var productImage: some View {
        ZStack{
            Image("hattefjall")
                .resizable()
                .scaledToFit()
        }
    }
    
    var productDescription: some View {
        VStack(alignment: .leading, spacing: 10) {
            Text("HATTEFJÄLL")
                .font(.title)
            HStack{
                Image("franky")
                    .resizable()
                    .frame(width: 40, height: 40, alignment: .leading)
                Text("프랭키")
            }
            HStack{
                Text("가격")
                    .frame(width: 60, alignment: .leading)
                Text("10,000")
            }
            HStack{
                Text("깊이")
                    .frame(width: 60, alignment: .leading)
                Text("68cm")
            }
            HStack{
                Text("폭")
                    .frame(width: 60, alignment: .leading)
                Text("68cm")
            }
            HStack(){
                Text("높이")
                    .frame(width: 60, alignment: .leading)
                Text("110cm")
            }
            Spacer()
        }
        .padding(8)
    }
}

// MARK: - Previews

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
