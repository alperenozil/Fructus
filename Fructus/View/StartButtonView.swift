//
//  StartButtonView.swift
//  Fructus
//
//  Created by Necdet Alperen Özil on 1.01.2021.
//

import SwiftUI

struct StartButtonView: View {
    // PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    // BODY
    var body: some View {
        Button(action:{
                isOnboarding=false
                print("quit from onboard")
                }) {
            HStack(spacing:8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
            }
            .padding(.horizontal,16)
            .padding(.vertical,4)
            .background(
                Capsule().strokeBorder(Color.white,lineWidth: 1.5)
            )
        }//endof BUTTON
        .accentColor(Color.white)
    }
}
    
    // PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
