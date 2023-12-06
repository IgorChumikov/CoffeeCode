//
//  OpenAppIntent.swift
//  CoffeeCode
//
//  Created by Игорь Чумиков on 05.12.2023.
//

import Foundation
import AppIntents

struct OpenAppIntent: AppIntent {
    static var title: LocalizedStringResource = "CoffeeCode"
    
    static var openAppWhenRun: Bool = true

    func perform() async throws -> some IntentResult {
        // Этот интент просто открывает приложение, специфические действия не требуются.
        return .result()
    }
}


