//
//  ContentView.swift
//  AirCnC_SwiftUI
//
//  Created by Ted Kim on 2023/01/28.
//

import SwiftUI

struct ContentView: View {
    
    var product: Product
    
    @State private var currentImageIndex = 0
    @State private var imageName = ""
    
    @State var isSelected: Bool = false
    @State private var date = Date()
    
    var body: some View {
        VStack(alignment: .leading){
            productImage
            productDescription
            reservationDate
        }
    }
}

private extension ContentView {
    
    var productImage: some View {
        ZStack{
            if let productDetailImage = product.detailImage {
                Image(productDetailImage[currentImageIndex])
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.width*2/3)
                HStack {
                    
                    // show prev image
                    Button {
                        currentImageIndex -= 1
                    } label: {
                        Image(currentImageIndex > 0 ? "left_arrow" : "left_arrow_gray")
                    }
                    .disabled(!(currentImageIndex>0))
                    
                    Spacer()
                    
                    // show next image
                    Button {
                        currentImageIndex += 1
                    } label: {
                        Image(currentImageIndex < productDetailImage.count - 1 ? "right_arrow" : "right_arrow_gray")
                    }
                    .disabled(!(currentImageIndex <  productDetailImage.count - 1))


                }
                .padding()
            }
            else {
                Text("상세 이미지가 없습니다.")
            }
        }
    }
    
    var productDescription: some View {
        
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text(product.name)
                    .font(.title)
                
                Spacer()
                
                LikeButton(isSelected: $isSelected)
            }
            
            HStack{
                if let productUserImage = product.user.image {
                    Image(productUserImage)
                        .resizable()
                        .frame(width: 40, height: 40, alignment: .leading)
                        .clipShape(Circle())
                }
                else {
                    Image(systemName: "person.fill")
                }
                Text(product.user.name)
            }
            VStack(spacing: 5){
                HStack{
                    HStack{
                        Text("가격")
                            .frame(width: 60, alignment: .leading)
                        Text("\(product.price)")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack{
                        Text("폭")
                            .frame(width: 60, alignment: .leading)
                        if let productSizeWidth = product.size?.w {
                            Text("\(productSizeWidth)")
                        } else { Text("-") }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                HStack{
                    HStack{
                        Text("깊이")
                            .frame(width: 60, alignment: .leading)
                        if let productSizeDepth = product.size?.d {
                            Text("\(productSizeDepth)")
                        } else { Text("-") }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack(){
                        Text("높이")
                            .frame(width: 60, alignment: .leading)
                        if let productSizeHeight = product.size?.h {
                            Text("\(productSizeHeight)")
                        } else { Text("-") }
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
            }
        }
        .padding(20)
    }
    
    var reservationDate: some View {
        
        VStack {
            Text("\(date, formatter: dateFormatter)")
            Form{
                DatePicker("Date", selection: $date, in: Date()..., displayedComponents: [.date])
                    .datePickerStyle(.automatic)
                    .padding(10)
            }
        }
        
    }
    var dateFormatter: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        return formatter
    }
}

struct LikeButton: View {
    
    @Binding var isSelected: Bool
    
    var body: some View {
        
        Button(action: {
            isSelected.toggle()
        }){
            Image(isSelected ? "btn_heart_filled" : "btn_heart_outline")
        }
        .padding(10)
    }
}

// MARK: - Previews
struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView(product: productSample)
    }
}
