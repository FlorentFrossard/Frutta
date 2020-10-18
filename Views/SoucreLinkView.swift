//
//  SoucreLinkView.swift
//  Fruta
//
//  Created by Florent on 13/10/2020.
//

import SwiftUI

struct SoucreLinkView: View {
   
    var body: some View {
        
        GroupBox() {
            HStack {
                Text("Content Source")
                
                Spacer()
                
                Link("Wikipedia", destination: URL(string: "https://wikipedia.com")!)
                
                Image(systemName: "arrow.up.right.square")
                    
            }.font(.footnote)
        }
    }
}

struct SoucreLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SoucreLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
