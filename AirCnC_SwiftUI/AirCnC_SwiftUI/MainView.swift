//
//  MainView.swift
//  AirCnC_SwiftUI
//
//  Created by Ted Kim on 2023/03/03.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            Explorer()
                .tabItem {
                    Image(systemName: "house")
                    Text("Home")
                }
            
            LikedView()
                .tabItem {
                    Image(systemName: "heart.circle")
                    Text("Liked")
                }
            
            ProfileView()
                .tabItem {
                    Image(systemName: "person")
                    Text("Profile")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
