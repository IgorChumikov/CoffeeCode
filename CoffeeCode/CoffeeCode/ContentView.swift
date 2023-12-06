//
//  ContentView.swift
//  CoffeeCode
//
//  Created by Игорь Чумиков on 05.12.2023.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("SavedCoffeeType") private var coffeeType: String = "Coffee Code"

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(coffeeType)
        }
        .padding()
    }
}


#Preview {
    ContentView()
}
