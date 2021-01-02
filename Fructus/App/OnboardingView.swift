//
//  OnboardingView.swift
//  Fructus
//
//  Created by Necdet Alperen Özil on 1.01.2021.
//

import SwiftUI
    // PROPERTIES
struct OnboardingView: View {
    
    // BODY
    var body: some View {
        TabView {
            ForEach(0..<5){ item in
                //FruitCardView()
                Text("some text")
            }
        }
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}
    
    // PREVIEW
struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
