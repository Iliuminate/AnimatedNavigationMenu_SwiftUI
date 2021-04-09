//
//  SideMenu.swift
//  CustomSideMenu_IOS
//
//  Created by Carlos Diaz on 7/04/21.
//

import SwiftUI

struct SideMenu: View {
    
    @Binding var selectedTab: String
    @Namespace var animation
    
    var body: some View {
        VStack(alignment: .leading, spacing: 15) {
            
            // Profile pic
            Image("profile")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .cornerRadius(10)
                .padding(.top, 50)
            
            VStack(alignment: .leading, spacing: 6) {
                Text("Carlos Dz")
                    .font(.title)
                    .fontWeight(.heavy)
                    .foregroundColor(.white)
                
                Button(action: {}) {
                    Text("View Profile")
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                        .opacity(0.7)
                }
            }
            
            // Tab buttons
            VStack(alignment:.leading, spacing: 10) {
                TabButton(image: "house",
                          title: "Home",
                          selectedTab: $selectedTab,
                          animation: animation)
                
                TabButton(image: "clock.arrow.circlepath",
                          title: "History",
                          selectedTab: $selectedTab,
                          animation: animation)
                
                TabButton(image: "bell.badge",
                          title: "Notifications",
                          selectedTab: $selectedTab,
                          animation: animation)
                
                TabButton(image: "gearshape.fill",
                          title: "Settings",
                          selectedTab: $selectedTab,
                          animation: animation)
                
                TabButton(image: "questionmark.circle",
                          title: "Help",
                          selectedTab: $selectedTab,
                          animation: animation)
            }
            .padding(.leading, -15)
            .padding(.top, 50)
            
            Spacer()
            
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 6) {
                TabButton(image: "rectangle.righthalf.inset.fill.arrow.right",
                          title: "Log out",
                          selectedTab: .constant(""),
                          animation: animation)
                    .padding(.leading, -15)
                
                Text("App version 0.1.0")
                    .font(.caption)
                    .fontWeight(.semibold)
                    .foregroundColor(.white)
                    .opacity(0.6)
            }
        }
        .padding()
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .topLeading)
    }
}

struct SideMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
