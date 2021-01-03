//
//  ContentView.swift
//  Fructus
//
//  Created by Necdet Alperen Özil on 30.12.2020.
//

import SwiftUI

struct ContentView: View {
    var fruits: [Fruit] = fruitsData
    var body: some View {
        NavigationView{
            List{
                ForEach(fruits) {item in
                    FruitRowView(fruit: item)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewLayout(.fixed(width: 320, height: 600))
    }
}
