//
//  ShortcutsProvider.swift
//  CoffeeCode
//
//  Created by Игорь Чумиков on 05.12.2023.
//

import Foundation
import AppIntents

struct ShortcutsProvider: AppShortcutsProvider {
    
    @AppShortcutsBuilder
    static var appShortcuts: [AppShortcut] {
        AppShortcut(intent: OpenAppIntent(), phrases: [
            "Open \(.applicationName) app",
        ],
                    shortTitle: "Hey Siri, Open Coffee Code",
                    systemImageName: "tv"
        )
        
        AppShortcut(intent: NeedSpecialCoffeeIntent(), phrases: [
              "Need special coffee in \(.applicationName)"
          ],
          shortTitle: "Hey Siri, Need special coffee in Coffee Code",
          systemImageName: "cup.and.saucer.fill"
          )
    }
}
