//
//  ContentView.swift
//  AirCnC_SwiftUI
//
//  Created by Ted Kim on 2023/01/28.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentImageIndex = 0
    let images = [
        "hattefjall_1",
        "hattefjall_2",
        "hattefjall_3",
        "hattefjall_4",
        "hattefjall_5"
    ]
    
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
            Image(images[currentImageIndex])
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
                    Image(currentImageIndex < images.count - 1 ? "right_arrow" : "right_arrow_gray")
                }
                .disabled(!(currentImageIndex < images.count - 1))


            }
            .padding()
        }
    }
    
    var productDescription: some View {
        VStack(alignment: .leading, spacing: 10) {
            HStack {
                Text("HATTEFJÄLL")
                    .font(.title)
                
                Spacer()
                
                LikeButton(isSelected: $isSelected)
            }
            
            HStack{
                Image("franky")
                    .resizable()
                    .frame(width: 40, height: 40, alignment: .leading)
                    .clipShape(Circle())
                Text("프랭키")
                    
            }
            VStack(spacing: 5){
                HStack{
                    HStack{
                        Text("가격")
                            .frame(width: 60, alignment: .leading)
                        Text("34,000")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack{
                        Text("폭")
                            .frame(width: 60, alignment: .leading)
                        Text("86cm")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                }
                
                HStack{
                    HStack{
                        Text("깊이")
                            .frame(width: 60, alignment: .leading)
                        Text("88cm")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    
                    HStack(){
                        Text("높이")
                            .frame(width: 60, alignment: .leading)
                        Text("101cm")
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
                    .datePickerStyle(.wheel)
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
        }, label: {
            Image(isSelected ? "btn_heart_filled" : "btn_heart_outline")
        })
    }
}

// MARK: - Previews

struct ContentView_Preview: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
