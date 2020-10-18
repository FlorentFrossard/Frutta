//
//  FruitDetailView.swift
//  Fruta
//
//  Created by Florent on 13/10/2020.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit: Fruit
    
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center, spacing: 20) {
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20) {

                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                            .padding(.horizontal)
                        
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal)
                       
                        FruitNutrientView(fruit: fruit)
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .bold()
                            .foregroundColor(fruit.gradientColors[1])
                            .padding(.horizontal)
                        
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                            .padding(.horizontal)
                        
                        SoucreLinkView()
                            .padding(.top, 10)
                            .padding(.horizontal, 40)
                    }
//                    .padding(.horizontal, 20)
                    .frame(maxWidth: 640, alignment: .center)
                }
                .navigationBarTitle(fruit.title, displayMode: .inline)
                .navigationBarHidden(true)
            }
            .edgesIgnoringSafeArea(.top)
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[0])
    }
}
