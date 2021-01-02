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
            ForEach(0..<fruitsData.count){ item in
                FruitCardView(fruit: fruitsData[item])
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
