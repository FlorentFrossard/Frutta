//
//  ContentView.swift
//  Fruta
//
//  Created by Florent on 12/10/2020.
//

import SwiftUI

struct ContentView: View {
    
    var fruit: [Fruit] = fruitsData
    @State private var isShowingSettings: Bool = false
    
    var body: some View {
        NavigationView {
            List(fruit.shuffled()) { item in
//                ForEach(fruit) { item in
                NavigationLink(destination: FruitDetailView(fruit: item)) {
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                    }
                }
            .navigationTitle(Text("Fruits"))
            .navigationBarItems(trailing:
                    Button(action: { isShowingSettings = true }) {
                        Image(systemName: "slider.horizontal.3")
                    }.sheet(isPresented: $isShowingSettings, content: {
                        SettingsView()
                    })
                )
            }
        .navigationViewStyle(StackNavigationViewStyle())
        }
    }
//}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruit: fruitsData)
    }
}
