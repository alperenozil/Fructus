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
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 8)
                    }
                }
            }
            .navigationTitle("Fruits")
        }//endof NAVIGATION
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
            .previewLayout(.fixed(width: 320, height: 600))
    }
}
