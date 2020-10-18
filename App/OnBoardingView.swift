//
//  OnBoardingView.swift
//  Fruta
//
//  Created by Florent on 13/10/2020.
//

import SwiftUI

struct OnBoardingView: View {
    
    // we set the data type as an array of fruit and initialised it as the fruit data
    var fruits: [Fruit] = fruitsData
    
    var body: some View {
       
        TabView {
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitsData)
    }
}
