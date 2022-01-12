//
//  GridCards.swift
//  QuantumTask
//
//  Created by Harshvardhan Basava on 11/01/22.
//

import SwiftUI

struct GridCards: View {
    let title: String
    let image: String
    var body: some View {
        if #available(iOS 15.0, *) {
            VStack{
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 170, height: 110)
                Text(title)
                    .fontWeight(.semibold)
                    .padding(.horizontal)
                    .padding(.bottom, 5)
            }
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 8))
        } else {
            // Fallback on earlier versions - this might affect the colors a bit,
            // since this project is developed on iOS 15.2 and Xcode Version 13.2.1 (13C100)
            VStack{
                Image(image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 170, height: 110)
                Text(title)
                    .fontWeight(.semibold)
                    .padding(.horizontal)
                    .padding(.bottom, 5)
            }
            .background(Color.gray.opacity(0.5))
            .clipShape(RoundedRectangle(cornerRadius: 8))
        }
    }
}
