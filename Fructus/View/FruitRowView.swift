//
//  FruitRowView.swift
//  Fructus
//
//  Created by Necdet Alperen Özil on 3.01.2021.
//

import SwiftUI

struct FruitRowView: View {
    var fruit: Fruit
    var body: some View {
        HStack(spacing: 15) {
            Image(fruit.image).renderingMode(.original).resizable().scaledToFit().frame(width: 80, height: 80, alignment: .center)
                .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
                .cornerRadius(8)
            VStack(alignment: .leading, spacing: 5)
                {
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline).font(.caption)
                    .foregroundColor(Color.secondary)
            }
        }// endof HSTACK
    }
}

struct FruitRowView_Previews: PreviewProvider {
    static var previews: some View {
        FruitRowView(fruit: fruitsData[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
