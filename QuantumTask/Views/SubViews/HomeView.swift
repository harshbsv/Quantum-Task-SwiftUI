//
//  HomeView.swift
//  QuantumTask
//
//  Created by Harshvardhan Basava on 10/01/22.
//

import SwiftUI

struct HomeView: View {
    @State private var address = ""
    @State private var searchField = ""
    var bannerImages = ["banner-1", "banner-2", "banner-3"]
    var gridImages: [String: String] = ["Grocery Store": "grocery-store", "Clothes Store": "clothes-store", "General Store":  "general-store", "Stationery": "stationery-store", "Pets": "pet-store", "Medical": "medical-store"]
    var columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            // MARK: Header
            if #available(iOS 15.0, *) {
                HStack {
                    VStack(alignment: .leading) {
                        Text("Your location")
                            .font(.headline)
                        HStack {
                            TextField("612 Saritavihar Delhi 110036", text: $address)
                            Button {
                                //edits the address.
                            } label: {
                                Image(systemName: "pencil")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.black)
                            }
                            Spacer()
                        }
                    }
                    Spacer()
                    Image("circle-avatar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                }
                .padding()
                .background(.ultraThinMaterial)
            } else {
                // Fallback on earlier versions - this might affect the colors a bit,
                // since this project is developed on iOS 15.2 and Xcode Version 13.2.1 (13C100)
                HStack {
                    VStack(alignment: .leading) {
                        Text("Your location")
                            .font(.headline)
                        HStack {
                            TextField("612 Saritavihar Delhi 110036", text: $address)
                            Button {
                                //edits the address.
                            } label: {
                                Image(systemName: "pencil")
                                    .resizable()
                                    .frame(width: 20, height: 20)
                                    .foregroundColor(.black)
                            }
                            Spacer()
                        }
                    }
                    Spacer()
                    Image("circle-avatar")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 60, height: 60)
                        .clipShape(Circle())
                }
                .padding()
                .background(Color.gray.opacity(0.5))
            }
            
            // MARK: Search Bar
            if #available(iOS 15.0, *) {
                HStack{
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    TextField("Search for Product, Brand and Shops", text: $searchField)
                }
                .padding()
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding(.horizontal)
            } else {
                // Fallback on earlier versions - this might affect the colors a bit,
                // since this project is developed on iOS 15.2 and Xcode Version 13.2.1 (13C100)
                HStack{
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.gray)
                    TextField("Search for Product, Brand and Shops", text: $searchField)
                }
                .padding()
                .background(Color.gray.opacity(0.5))
                .clipShape(RoundedRectangle(cornerRadius: 12))
                .padding(.horizontal)
            }
            Rectangle()
                .frame(maxWidth: .infinity, maxHeight: 1)
                .foregroundColor(.gray)
            
            // MARK: Content
            VStack(alignment: .center, spacing: 14) {
                VStack(alignment: .center, spacing: 8) {
                    Text("Explore By Category")
                        .font(.title3.weight(.semibold))
                    Text("Everything we have. Everything you need.")
                }
                HStack(spacing: 80) {
                    if #available(iOS 15.0, *) {
                        Button {
                            //do action here
                        } label: {
                            VStack {
                                Image("product")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                Text("Product")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                            }
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(.red)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    } else {
                        // Fallback on earlier versions - this might affect the colors a bit,
                        // since this project is developed on iOS 15.2 and Xcode Version 13.2.1 (13C100)
                        Button {
                            //do action here
                        } label: {
                            VStack {
                                Image("product")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                Text("Product")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.white)
                            }
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(Color.red)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    if #available(iOS 15.0, *) {
                        Button {
                            //do action here
                        } label: {
                            VStack {
                                Image("services")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                Text("Services")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.red)
                            }
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(.ultraThinMaterial)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    } else {
                        // Fallback on earlier versions - this might affect the colors a bit,
                        // since this project is developed on iOS 15.2 and Xcode Version 13.2.1 (13C100)
                        Button {
                            //do action here
                        } label: {
                            VStack {
                                Image("services")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                Text("Services")
                                    .fontWeight(.semibold)
                                    .foregroundColor(.red)
                            }
                        }
                        .padding(.horizontal, 10)
                        .padding(.vertical, 5)
                        .background(Color.gray.opacity(0.5))
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                }
            }
            .padding(.bottom)
            
            // MARK: Banner
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack(spacing: 20) {
                    ForEach(bannerImages, id: \.self) { bannerImage in
                        Image("\(bannerImage)")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 400, height: 200)
                    }
                }
            }
            .padding(.bottom)
            
            // MARK: GridView
            LazyVGrid(columns: columns, spacing: 20) {
                GridCards(title: "Groceries", image: "grocery-store")
                GridCards(title: "Clothes", image: "clothes-store")
                GridCards(title: "General store", image: "general-store")
                GridCards(title: "Stationery", image: "stationery-store")
                GridCards(title: "Pet", image: "pet-store")
                GridCards(title: "Medical", image: "medical-store")
            }
            .padding(.horizontal, 10)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
