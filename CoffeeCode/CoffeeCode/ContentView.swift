//
//  ContentView.swift
//  CoffeeCode
//
//  Created by Игорь Чумиков on 05.12.2023.
//

import SwiftUI

struct ContentView: View {
    // @AppStorage автоматически обновит связанную переменную, и интерфейс отобразит новые данные.
    @AppStorage("SavedCoffeeType") private var coffeeType: String = "Coffee Code"
    
    @Environment(\.scenePhase) private var scenePhase

    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text(coffeeType)
        }
        .padding()
        //  очистить UserDefaults, когда приложение переходит в фоновый режим или закрывается.
        .onChange(of: scenePhase) { newPhase in
                  if newPhase == .background {
                      print("App is in background")
                      UserDefaults.standard.removeObject(forKey: "SavedCoffeeType")
                  }
              }
    }
}


#Preview {
    ContentView()
}
