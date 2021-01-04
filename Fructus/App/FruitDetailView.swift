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
                        Text(fruit.title)
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
