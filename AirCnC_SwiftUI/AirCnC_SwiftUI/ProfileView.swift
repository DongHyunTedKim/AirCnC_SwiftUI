//
//  ProfileView.swift
//  AirCnC_SwiftUI
//
//  Created by Ted Kim on 2023/03/03.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .aspectRatio(1, contentMode: .fit)
                    .frame(width: 100)
                Text("Name")
                    .font(.headline)
            }
            
            .navigationTitle("Profile")
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
