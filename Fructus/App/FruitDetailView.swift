//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Necdet Alperen Özil on 4.01.2021.
//

import SwiftUI

struct FruitDetailView: View {
    var fruit: Fruit
    var body: some View {
        NavigationView{
            ScrollView(.vertical, showsIndicators: false){
                VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20){
                    VStack(alignment: .leading, spacing: 20){
                        // TITLE
                        Text(fruit.title).font(.largeTitle).fontWeight(.heavy).foregroundColor(fruit.gradientColors[1])
                        // HEADLINE
                        Text(fruit.headline).font(.headline).multilineTextAlignment(.leading)
                        
                    }
                    .padding(.horizontal,20)
                    .frame(maxWidth:640, alignment: .center)
                }
            }
        }
    }
}

struct FruitDetailView_Previews: PreviewProvider {
    static var previews: some View {
        FruitDetailView(fruit: fruitsData[7])
            .previewLayout(.sizeThatFits)
    }
}
