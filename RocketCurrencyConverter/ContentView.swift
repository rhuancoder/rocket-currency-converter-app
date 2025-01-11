//
//  ContentView.swift
//  RocketCurrencyConverter
//
//  Created by Rhuan Carvalho on 21/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            //Background image
            Image(.background)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                //Logo image view
                Image(.prancingpony)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 200)
                
                //Currency exchange text
                Text("Currency Exchange")
                    .font(.title)
                    .foregroundColor(Color.white)
                
                //Conversion section
                HStack {
                    //Left conversion section
                    VStack {
                        //Currency
                        HStack {
                            //Currency image
                            Image(.silverpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 40)
                            
                            //Currency text
                            Text("Silver piece")
                                .font(.headline)
                                .foregroundColor(Color.white)
                        }
                        
                        //Text field
                        Text("Text field")
                    }
                    
                    //Equal sign
                    Image(systemName: "equal")
                        .font(.largeTitle)
                        .foregroundStyle(.white)
                        .symbolEffect(.pulse)
                    
                    //Right conversion section
                    VStack {
                        //Currency
                        HStack {
                            //Currency text
                            Text("Gold piece")
                                .font(.headline)
                                .foregroundColor(Color.white)
                            
                            //Currency image
                            Image(.goldpiece)
                                .resizable()
                                .scaledToFit()
                                .frame(height: 40)
                        }
                        
                        //Text field
                        Text("Text field")
                    }
                }
                
                Spacer()
                
                //Info button
                Image(systemName: "info.circle.fill")
                    .font(.largeTitle)
                    .foregroundStyle(.white)
            }
        }
    }
}

#Preview {
    ContentView()
}
