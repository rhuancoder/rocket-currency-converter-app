//
//  ContentView.swift
//  RocketCurrencyConverter
//
//  Created by Rhuan Carvalho on 21/12/24.
//

import SwiftUI

struct ContentView: View {
    @State var showExchangeInfo = false
    @State var leftAmount = ""
    @State var rightAmount = ""
    
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
                        .padding(.bottom, -5)
                        
                        //Text field
                        TextField("Amount", text: $leftAmount)
                            .textFieldStyle(.roundedBorder)
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
                        .padding(.bottom, -5)
                        
                        //Text field
                        TextField("Amount", text: $rightAmount)
                            .textFieldStyle(.roundedBorder)
                            .multilineTextAlignment(.trailing)
                    }
                }
                .padding()
                .background(.black.opacity(0.4))
                .clipShape(.rect(cornerRadius: 30))
                
                Spacer()
                
                //Info button
                HStack {
                    Spacer()
                    
                    Button {
                        showExchangeInfo.toggle()
                    } label: {
                        Image(systemName: "info.circle.fill")
                            .font(.largeTitle)
                            .foregroundStyle(.white)
                    }
                    .padding(.trailing)
                }
            }
        }
    }
}

#Preview {
    ContentView()
}
