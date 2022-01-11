//
//  ContentView.swift
//  QuantumTask
//
//  Created by Harshvardhan Basava on 10/01/22.
//

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
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
