//
//  SettingsView.swift
//  Fruta
//
//  Created by Florent on 14/10/2020.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.presentationMode) var presentationMode
//    @State var isPresented = false
    @AppStorage("isOnBoarding") var isOnBoarding: Bool = false
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    
                    //MARK:- Section 1
                    GroupBox(
                        label:
                          SettingsLabelView(labelText: "Frutta", labelImage: "info.circle"))
                            {
                        Divider()
                            .padding(.vertical, 4)
                            
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            Text("Most Fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essential nutrients, including potassium, dietary fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                            }
                    
                    //MARK:- Section 2
                    
                    GroupBox(label: SettingsLabelView(labelText: "Customization", labelImage: "paintbrush")) {
                        Divider()
                            .padding(.vertical, 4)
                        Text("If you wish, you can restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the welcome screen again.")
                            .padding(.vertical, 8)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        
                        Toggle(isOn: $isOnBoarding) {
                            if isOnBoarding {
                                Text("Restarted".uppercased())
                                    .bold()
                                    .foregroundColor(.green)
                            } else {
                                Text("Restart".uppercased())
                                    .bold()
                                    .foregroundColor(.secondary)
                            }
                        }
                        
                        .padding()
                        .background(Color(UIColor.tertiarySystemBackground)
                                        .clipShape(RoundedRectangle(cornerRadius: 8, style: .continuous)))
                        
                     }
                    
                    //MARK:- Section 3
                    
                    GroupBox(label: SettingsLabelView(labelText: "Application", labelImage: "apps.iphone")
                    ){
        
                        SettingsRowView(name: "Developper", content: "Florent Frossard")
                        SettingsRowView(name: "Designer", content: "Florent Frossard")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Portfolio", linkLabel: "SwiftUI Apps", linkdestination:
                                            "florentfrossard.onuniverse.com")
                        SettingsRowView(name: "Twitter", linkLabel: "@FlorentFrossard", linkdestination: "twitter.com/FlorentFrossard")
                        SettingsRowView(name: "SwiftUI", content: "2.0")
                        SettingsRowView(name: "Version", content: "1.1.0")
                    }
               
                }
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(trailing:
                 Button(action: {presentationMode.wrappedValue.dismiss()}
                 // find a solution to dismiss the modal
                 ) {
                    Image(systemName: "xmark")
                 }
                )
                .padding()
            }
        }
    }
}

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .preferredColorScheme(.dark)
    }
}
