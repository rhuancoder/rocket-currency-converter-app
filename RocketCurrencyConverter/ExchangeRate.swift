//
//  ExchangeRate.swift
//  RocketCurrencyConverter
//
//  Created by Rhuan Carvalho on 20/01/25.
//

import SwiftUI

struct ExchangeRate: View {
    let leftImage: ImageResource
    let exchangeRateText: String
    let rightImage: ImageResource
    
    var body: some View {
        HStack {
            // Left currency image
            Image(leftImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
            
            // Exchange rate text
            Text(exchangeRateText)
            
            // Right currency image
            Image(rightImage)
                .resizable()
                .scaledToFit()
                .frame(height: 33)
        }
    }
}

#Preview {
    ExchangeRate(leftImage: .goldpiece, exchangeRateText: "1 Gold Piece = 4 Gold Pennies", rightImage: .goldpenny)
}
