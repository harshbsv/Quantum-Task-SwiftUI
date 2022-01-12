//
//  ContentView.swift
//  QuantumTask
//
//  Created by Harshvardhan Basava on 10/01/22.
//
//
// NOTE: This project was developed on the latest version of Xcode - Version 13.2.1 (13C100).
// The default iOS deployment target used was 15.2, which has been changed to 14.0 to avoid
// issues running the project further. Made some changes in code to support both the latest
// and the older version of iOS.

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    //highlighted label color should be red instead of system blue.
                    Label("Home", systemImage: "house.fill")
                }
            SavedView()
                .tabItem {
                    Label("Saved", systemImage: "heart.fill")
                }
            NotificationsView()
                .tabItem {
                    Label("Notifications", systemImage: "bell.fill")
                }
            ProfileView()
                .tabItem {
                    Label("Profile", systemImage: "person.fill")
                }
            CartView()
                .tabItem {
                    Label("Cart", systemImage: "cart.fill")
                }
        }
        .accentColor(.red)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
