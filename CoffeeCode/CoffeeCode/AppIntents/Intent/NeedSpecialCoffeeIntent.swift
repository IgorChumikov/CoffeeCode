//
//  NeedSpecialCoffeeIntent.swift
//  CoffeeCode
//
//  Created by Игорь Чумиков on 06.12.2023.
//

import AppIntents

struct NeedSpecialCoffeeIntent: AppIntent {
    static var title: LocalizedStringResource = "Special Coffee Order"
    static var openAppWhenRun: Bool = true

    @Parameter(title: "Coffee Type")
    var coffeeType: String

    func perform() async throws -> some IntentResult {
        UserDefaults.standard.set(coffeeType, forKey: "SavedCoffeeType")
        return .result()
    }
}

