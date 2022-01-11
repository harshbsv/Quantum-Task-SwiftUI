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
    }
}
