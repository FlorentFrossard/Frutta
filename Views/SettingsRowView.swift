//
//  SettingsRowView.swift
//  Fruta
//
//  Created by Florent on 14/10/2020.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkdestination: String? = nil
    
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)
            HStack{
                Text(name)
                    .foregroundColor(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if
                    (linkLabel != nil && linkdestination != nil) {
                    Link(linkLabel!, destination: URL(string: "https://\(linkdestination!)")!)
                    Image(systemName: "arrow.up.right.circle")
                        .foregroundColor(Color.pink)
                }
                    else {
                    EmptyView()
                }
            }
        }
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SettingsRowView(name: "Developer", content: "Florent Frossard")
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
            SettingsRowView(name: "Website", linkLabel: "PortFolio", linkdestination: "florentfrossard.onuniverse.com")
                .preferredColorScheme(.dark)
                .previewLayout(.fixed(width: 375, height: 60))
                .padding()
        }
    }
}
