//
//  FruitCardView.swift
//  Fruta
//
//  Created by Florent on 12/10/2020.
//

import SwiftUI

struct FruitCardView: View {
    
    @State private var isAnimate = false
    
    var fruit: Fruit
    // here we only set a variable to store the struct of Fruit, the data is displayed by the preview with an indexed array of fruitdata
    
 var body: some View {
        
        ZStack {
            VStack(spacing: 20) {
                
                Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 0.06, y: 8)
                .scaleEffect(isAnimate ? 1.0 : 0.6)
             
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 2, x: 2, y: 2)
                
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal, 16)
                    .frame(maxWidth: 480)
                
                StartButtonView()
                
            }
        }
        .onAppear {
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimate = true
            }
        }
        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
        
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[6])
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
