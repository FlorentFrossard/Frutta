//
//  SettingsLabelView.swift
//  Fruta
//
//  Created by Florent on 14/10/2020.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labelText: String
    var labelImage: String
    
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .bold()
                Spacer()
                Image(systemName: labelImage)
    }
  }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Frutta", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
